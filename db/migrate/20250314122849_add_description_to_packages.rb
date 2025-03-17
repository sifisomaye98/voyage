class AddDescriptionToPackages < ActiveRecord::Migration[7.1]
  def change
    add_column :packages, :description, :text
  end
end
