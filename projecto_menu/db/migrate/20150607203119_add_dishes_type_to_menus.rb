class AddDishesTypeToMenus < ActiveRecord::Migration
  def change
    add_column :menus, :dishes_type_id, :integer
    add_index :menus, :dishes_type_id
  end
end
