class CreateVariants < ActiveRecord::Migration[7.0]
  def change
    create_table :variants do |t|
      t.references :vehicle, null: false, foreign_key: true
      t.string :name
      t.json :characteristics
      t.float :price

      t.timestamps
    end
  end
end
