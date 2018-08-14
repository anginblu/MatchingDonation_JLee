class ChallengesDonation < ApplicationRecord
  belongs_to :donation
  belongs_to :challenge
end
