class CreateOrderHeaders < ActiveRecord::Migration
  def change
    create_table :order_headers do |t|
      t.date :date_order
      t.date :date_update
      t.date :date_canceled
      t.string :observations
      t.decimal :amount
      t.string :datos_customer
      t.string :address_customer
      t.string :phone_customer
      t.references :menus, index: true
      t.references :order_status, index: true

      t.timestamps
    end
  end
end
