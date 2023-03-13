class AddTractionToVariant < ActiveRecord::Migration[7.0]
  def change
    add_reference :variants, :traction, null: true, foreign_key: true
  end
end
