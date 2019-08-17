class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.string :first_name
      t.string :last_name
      t.text :address
      t.text :credit_card_name
      t.integer :credit_card_number
      t.integer :cvv
      t.integer :card_expire_date

      t.timestamps
    end
  end
end
