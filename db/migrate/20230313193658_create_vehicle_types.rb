class CreateVehicleTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicle_types do |t|
      t.string :name
      t.integer :wheels

      t.timestamps
    end
  end
end
