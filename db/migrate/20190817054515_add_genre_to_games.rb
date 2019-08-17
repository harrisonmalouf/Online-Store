class AddGenreToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :genre, :text
  end
end
