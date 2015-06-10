class CreateOrderDetails < ActiveRecord::Migration
  def change
    
    create_table :order_details do |t|
      t.integer :cant_dishes
<<<<<<< HEAD:projecto_menu/db/migrate/20150601021102_create_order_details.rb
      t.price :decimal
      t.references :order_headers, index: true
      t.references :dishes , index: true
=======
      t.decimal :parcial_price
      t.references :order_headers, index: true
      t.references :dishes, index: true

>>>>>>> 99e898b7f6bbe3b80fe33c4e1afeaec9287204f7:projecto_menu/db/migrate/20150609011757_create_order_details.rb
      t.timestamps
    end
  end
end
