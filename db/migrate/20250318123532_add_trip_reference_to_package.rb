class AddTripReferenceToPackage < ActiveRecord::Migration[7.1]
  def change
    add_reference :packages, :trip, null: false, foreign_key: true
  end
end
