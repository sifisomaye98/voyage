class AddTypeToRecommendations < ActiveRecord::Migration[7.1]
  def change
    add_column :recommendations, :type, :integer
  end
end
