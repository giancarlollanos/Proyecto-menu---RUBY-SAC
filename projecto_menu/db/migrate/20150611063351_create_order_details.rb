class CreateOrderDetails < ActiveRecord::Migration
  def change
    drop_table :order_details
    create_table :order_details do |t|
      t.integer :cant_dishes
      t.string :moneda
      t.decimal :parcial_price
      t.references :order_header, index: true
      t.references :dish, index: true

      t.timestamps
    end
  end
end
