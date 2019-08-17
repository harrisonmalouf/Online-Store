class CreateGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :genres do |t|
      t.text :name
      t.text :catagory
      t.text :image

      t.timestamps
    end
  end
end
