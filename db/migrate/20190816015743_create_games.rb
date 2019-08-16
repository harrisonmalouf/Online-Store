class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.text :name
      t.date :release_date
      t.text :image
      t.float :price

      t.timestamps
    end
  end
end
