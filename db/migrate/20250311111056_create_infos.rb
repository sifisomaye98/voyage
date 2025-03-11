class CreateInfos < ActiveRecord::Migration[7.1]
  def change
    create_table :infos do |t|
      t.references :destination, null: false, foreign_key: true
      t.string :visa
      t.string :safety

      t.timestamps
    end
  end
end
