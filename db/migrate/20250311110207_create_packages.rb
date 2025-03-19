class CreatePackages < ActiveRecord::Migration[7.1]
  def change
    create_table :packages do |t|
      t.integer :category
      t.string :name

      t.timestamps
    end
  end
end
