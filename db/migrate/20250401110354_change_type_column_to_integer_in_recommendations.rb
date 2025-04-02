class ChangeTypeColumnToIntegerInRecommendations < ActiveRecord::Migration[7.1]
  def change
    remove_column :recommendations, :type
  end
end
