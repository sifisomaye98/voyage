class CreateFlights < ActiveRecord::Migration[7.1]
  def change
    create_table :flights do |t|
      t.string :airline
      t.integer :price
      t.string :departure
      t.string :arrival

      t.timestamps
    end
  end
end
