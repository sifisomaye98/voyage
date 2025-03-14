class RemoveForeignKeyFromTable < ActiveRecord::Migration[7.1]
  def change
    remove_foreign_key :packages, :hotels
    remove_foreign_key :packages, :flights
  end
end
