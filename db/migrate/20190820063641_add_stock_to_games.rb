class AddStockToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :stock, :integer
  end
end
