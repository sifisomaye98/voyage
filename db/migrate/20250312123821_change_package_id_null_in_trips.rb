class ChangePackageIdNullInTrips < ActiveRecord::Migration[7.1]
  def change
    # Changing the 'package_id' column to allow NULL values
    change_column_null :trips, :package_id, true
  end
end
