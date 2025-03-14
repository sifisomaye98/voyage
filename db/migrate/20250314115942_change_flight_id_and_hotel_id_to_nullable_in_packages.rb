class ChangeFlightIdAndHotelIdToNullableInPackages < ActiveRecord::Migration[7.1]
  def change
    change_column_null :packages, :flight_id, true
    change_column_null :packages, :hotel_id, true
  end
end
