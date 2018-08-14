class CreateChallenges < ActiveRecord::Migration[5.2]
  def change
    create_table :challenges do |t|
      t.decimal :amount, precision: 10, scale: 2
      t.string :email
      t.boolean :active, default: true
      t.integer :donation_count, default: 0
      t.decimal :total_donation, precision: 10, scale: 2, default: 0
    end
  end
end
