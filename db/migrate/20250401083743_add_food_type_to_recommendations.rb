class AddFoodTypeToRecommendations < ActiveRecord::Migration[7.1]
  def change
    add_column :recommendations, :type, :string
  end
end
