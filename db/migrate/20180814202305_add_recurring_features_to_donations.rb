class AddRecurringFeaturesToDonations < ActiveRecord::Migration[5.2]
  def change
    add_column :donations, :recurring_period, :string
    add_column :donations, :recurring_length, :integer
  end
end
