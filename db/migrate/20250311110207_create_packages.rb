class CreatePackages < ActiveRecord::Migration[7.1]
  def change
    create_table :packages do |t|
      t.references :flight, null: false, foreign_key: true
      t.references :hotel, null: false, foreign_key: true
      t.integer :category
      t.string :name

      t.timestamps
    end
  end
end
