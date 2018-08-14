class CreateChallengesDonations < ActiveRecord::Migration[5.2]
  def change
    create_table :challenges_donations do |t|
      t.belongs_to :challenge
      t.belongs_to :donation
      t.timestamps
    end
  end
end
