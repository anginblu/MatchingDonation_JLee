class CreateDonations < ActiveRecord::Migration[5.2]
  def change
    create_table :donations do |t|
      t.decimal :amount, precision: 10, scale: 2
      t.string :email

      t.timestamps
    end
  end
end
