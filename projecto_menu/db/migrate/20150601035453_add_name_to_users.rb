class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :dni, :string
    add_column :users, :name, :string
    add_column :users, :last_name, :string
    add_column :users, :address, :string
    add_column :users, :phone, :string
    add_column :users, :telephone, :string
    add_column :users, :date_of_birth, :datetime
    add_column :users, :status, :boolean, default: false
  end
end
