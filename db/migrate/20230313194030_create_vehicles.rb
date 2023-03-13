class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.references :brand, null: false, foreign_key: true
      t.references :vehicle_sub_type, null: false, foreign_key: true
      t.string :name
      t.integer :year

      t.timestamps
    end
  end
end
