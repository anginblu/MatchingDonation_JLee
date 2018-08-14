class CreateInstallments < ActiveRecord::Migration[5.2]
  def change
    create_table :installments do |t|
      t.belongs_to :donation
      t.decimal :amount
      
      t.timestamps
    end
  end
end
