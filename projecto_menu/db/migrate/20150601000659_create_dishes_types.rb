class CreateDishesTypes < ActiveRecord::Migration
  def change
    create_table :dishes_types do |t|
      t.string :description
      
      t.timestamps
    end
  end
end
