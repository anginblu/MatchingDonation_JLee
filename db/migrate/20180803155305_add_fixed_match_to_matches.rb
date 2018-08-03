class AddFixedMatchToMatches < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :fixed_match, :string
  end
end
