class CreateRecommendations < ActiveRecord::Migration[7.1]
  def change
    create_table :recommendations do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
