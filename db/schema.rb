# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_03_14_031612) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tractions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "username"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "variants", force: :cascade do |t|
    t.bigint "vehicle_id", null: false
    t.string "name"
    t.json "characteristics"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "traction_id"
    t.index ["traction_id"], name: "index_variants_on_traction_id"
    t.index ["vehicle_id"], name: "index_variants_on_vehicle_id"
  end

  create_table "vehicle_sub_types", force: :cascade do |t|
    t.bigint "vehicle_type_id", null: false
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vehicle_type_id"], name: "index_vehicle_sub_types_on_vehicle_type_id"
  end

  create_table "vehicle_types", force: :cascade do |t|
    t.string "name"
    t.integer "wheels"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.bigint "brand_id", null: false
    t.bigint "vehicle_sub_type_id", null: false
    t.string "name"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_vehicles_on_brand_id"
    t.index ["vehicle_sub_type_id"], name: "index_vehicles_on_vehicle_sub_type_id"
  end

  add_foreign_key "variants", "tractions"
  add_foreign_key "variants", "vehicles"
  add_foreign_key "vehicle_sub_types", "vehicle_types"
  add_foreign_key "vehicles", "brands"
  add_foreign_key "vehicles", "vehicle_sub_types"
end
