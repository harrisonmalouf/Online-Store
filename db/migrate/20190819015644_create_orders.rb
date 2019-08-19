class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.text :user_name
      t.text :order_name
      t.integer :quantity
      t.integer :user_id
      t.integer :payment_id
      t.float :amount
      t.date :date
    end
  end
end
