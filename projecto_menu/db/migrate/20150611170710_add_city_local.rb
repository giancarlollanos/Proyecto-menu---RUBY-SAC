class AddCityLocal < ActiveRecord::Migration
  def change
     add_column :locals, :city, :string
  end
end
