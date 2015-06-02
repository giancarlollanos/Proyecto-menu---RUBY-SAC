class CreateProfiles < ActiveRecord::Migration
  def change

    create_table :profiles do |t|
      t.string :name
      t.boolean :status

      t.timestamps
    end
  end
end
