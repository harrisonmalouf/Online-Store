class AddGamesIdToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :games_id, :integer
  end
end
