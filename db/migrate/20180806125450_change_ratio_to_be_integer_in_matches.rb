class ChangeRatioToBeIntegerInMatches < ActiveRecord::Migration[5.2]
  def change
    change_column :matches, :ratio, :integer, precision: 0
  end
end
