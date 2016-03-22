class AddFieldsToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :subtotal, :decimal, precision: 18, scale: 2
    add_column :orders, :tax, :decimal, precision: 18, scale: 2
    add_column :orders, :shipping, :decimal, precision: 18, scale: 2
    add_column :orders, :total, :decimal, precision: 18, scale: 2
    add_reference :orders, :order_status, index: true, foreign_key: true
  end
end
