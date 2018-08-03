class Donation < ApplicationRecord
  has_many :matches_donations
  has_many :matches, through: :matches_donations
  validates :email, presence: true
  validates :amount, presence: true
end
