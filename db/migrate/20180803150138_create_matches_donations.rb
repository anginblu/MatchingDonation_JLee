class CreateMatchesDonations < ActiveRecord::Migration[5.2]
  def change
    create_table :matches_donations do |t|
      t.belongs_to :match
      t.belongs_to :donation
      t.timestamps
    end
  end
end
