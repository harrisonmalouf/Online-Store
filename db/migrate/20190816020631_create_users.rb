class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :email
      t.text :user_name
      t.text :address
      t.string :password_digest

      t.timestamps
    end
  end
end
