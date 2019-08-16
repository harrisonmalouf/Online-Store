class CreatePlatforms < ActiveRecord::Migration[5.2]
  def change
    create_table :platforms do |t|
      t.text :name
      t.text :type
      t.text :image

      t.timestamps
    end
  end
end
