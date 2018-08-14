class AddRecurringToDonations < ActiveRecord::Migration[5.2]
  def change
    add_column :donations, :recurring, :boolean, default: false
  end
end
