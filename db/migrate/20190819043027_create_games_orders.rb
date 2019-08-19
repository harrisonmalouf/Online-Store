class CreateGamesOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :games_orders, :id => false do |t|
      t.integer :game_id
      t.integer :order_id
    end
  end
end
