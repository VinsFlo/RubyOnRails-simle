class CreatePossuvideos < ActiveRecord::Migration[6.1]
  def change
    create_table :possuvideos do |t|
      t.string :image
      t.string :video
      t.string :tittle
      t.integer :star
      t.text :description

      t.timestamps
    end
  end
end
