class CreateOrderDetails < ActiveRecord::Migration
  def change
    create_table :order_details do |t|
      t.integer :cant_dishes
      t.decimal :price
      t.references :order_headers, index: true
      t.references :dishes , index: true

      t.timestamps
    end
  end
end
