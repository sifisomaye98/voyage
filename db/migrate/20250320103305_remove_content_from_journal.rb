class RemoveContentFromJournal < ActiveRecord::Migration[7.1]
  def change
    remove_column :journals, :content, :text
  end
end
