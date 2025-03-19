class AddSelectedToPackage < ActiveRecord::Migration[7.1]
  def change
    add_column :packages, :selected, :boolean, default: false
  end
end
