class CreateVehicleSubTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicle_sub_types do |t|
      t.references :vehicle_type, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
