require 'pry'

class Match < ApplicationRecord
  has_many :matches_donations
  has_many :donations, through: :matches_donations
  validates :email, presence: true
  validates :max_amount, presence: true
  validate :matching_formula_present

  def matching_formula_present
    if !ratio.present? || !fixed_match.present?
      errors.add(:ratio, "Ratio / Fixed Amount for matching can't both be blank.")
    end
  end

  def matched_amount
    if !self.ratio.nil?
      sum = self.donations.sum(:amount)
      result = sum * self.ratio
    elsif self.fixed_match.present?
      result = self.donations.length * fixed_match.to_i
    else
      result = self.donations.sum(:amount)
    end

    result < self.max_amount ? result : self.max_amount
  end

  def remaining
    self.max_amount - self.matched_amount
  end

end
