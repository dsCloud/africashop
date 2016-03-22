class CreateShoppingCarts < ActiveRecord::Migration
  def change
    create_table :shopping_carts do |t|
      t.decimal :subtotal, precision: 12, scale: 2
      t.decimal :tax, precision: 12, scale: 2
      t.decimal :shipping, precision: 12, scale: 2
      t.decimal :total, precision: 12, scale: 2
      #add_reference :shopping_carts, :order_status, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
