class RemoveDescriptionIdFromGames < ActiveRecord::Migration[5.2]
  def change
    remove_column :games,
    :Description, :string
  end
end
