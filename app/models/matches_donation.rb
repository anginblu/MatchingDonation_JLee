class MatchesDonation < ApplicationRecord
  belongs_to :donation
  belongs_to :match

end
