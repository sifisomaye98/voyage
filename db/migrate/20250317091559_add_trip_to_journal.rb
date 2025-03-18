class AddTripToJournal < ActiveRecord::Migration[7.1]
  def change
    add_reference :journals, :trip, null: false, foreign_key: true
  end
end
