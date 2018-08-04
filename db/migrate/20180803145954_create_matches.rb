class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.decimal :max_amount, precision: 10, scale: 2
      t.string :email
      t.boolean :active, default: true
      t.decimal :ratio

      t.timestamps
    end
  end
end
