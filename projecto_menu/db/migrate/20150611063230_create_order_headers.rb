class CreateOrderHeaders < ActiveRecord::Migration
  def change
    
    create_table :order_headers do |t|
      t.datetime :date_order
      t.datetime :date_canceled
      t.string :observations
      t.decimal :amount
      t.string :datos_customer
      t.string :address_customer
      t.string :phone_customer
      t.references :local, index: true
      t.references :order_status, index: true

      t.timestamps
    end
  end
end
