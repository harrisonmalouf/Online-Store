class AddDescriptionToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :Description, :string
  end
end
