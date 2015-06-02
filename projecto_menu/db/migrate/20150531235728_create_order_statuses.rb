class CreateOrderStatuses < ActiveRecord::Migration
  def change
    create_table :order_statuses do |t|
      t.string :name
      t.string :status

      t.timestamps
    end
  end
end
