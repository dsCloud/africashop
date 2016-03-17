class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :phone_number
      t.string :address
      t.string :sector
      t.string :province
      t.integer :user_id
      t.integer :buyer_id
      t.integer :seller_id

      t.timestamps null: false
    end
  end
end
