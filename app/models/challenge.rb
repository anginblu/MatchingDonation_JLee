require 'pry'

class Challenge < ApplicationRecord
  has_many :challenges_donations
  has_many :donations, through: :challenges_donations
  validate :challenging_formula_present
  validates :email, presence: true
  validates :amount, presence: true

  def challenging_formula_present
    if donation_count == 0 && total_donation == 0
      errors.add(:donation_count, "Challenge formula can't both be blank.")
    end
  end

  def challenge_based_on_total?
    return self.total_donation > 0
  end

  def challenge_met?
    if self.total_donation > 0
      if self.total_donation <= self.donations.sum(:amount)
        return true
      else
        return false
      end
    elsif self.donation_count > 0
      if self.donation_count <= self.donations.size
        return true
      else
        return false
      end
    else
      return false
    end
  end


end
