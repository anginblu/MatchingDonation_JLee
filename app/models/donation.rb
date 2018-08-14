class Donation < ApplicationRecord
  has_many :matches_donations
  has_many :matches, through: :matches_donations
  has_many :challenges_donations
  has_many :challenges, through: :challenges_donations
  has_many :installments

  validates :email, presence: true
  validates :amount, presence: true

  def remaining_installments
    if self.recurring_period == "yearly"
      self.recurring_length - self.installments.count
    else
      self.recurring_length * 12 - self.installments.count
    end
  end

  def installment_amount
    if self.recurring_period == "yearly"
      self.amount / self.recurring_length
    else
      self.amount / self.recurring_length / 12
    end
  end

  def installments_made
    self.installment_amount * self.installments.count
  end

end
