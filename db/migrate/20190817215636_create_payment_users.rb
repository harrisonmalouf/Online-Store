class CreatePaymentUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :payment_users, :id => false  do |t|
      t.integer :payment_id
      t.integer :user_id
    end
  end
end
