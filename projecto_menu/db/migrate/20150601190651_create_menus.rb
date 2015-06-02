class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.datetime :date_menu
      t.integer :stock
      t.decimal :price
      t.boolean :status
      t.references :user, index: true
      t.references :local, index: true
      t.references :week, index: true
      t.references :dish, index: true

      t.timestamps
    end
  end
end
