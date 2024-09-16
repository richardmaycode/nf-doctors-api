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

ActiveRecord::Schema[7.2].define(version: 2024_09_04_140109) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "age_groups", force: :cascade do |t|
    t.string "name"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "phone"
    t.string "fax"
    t.string "email"
    t.boolean "private"
    t.bigint "contactable_id"
    t.string "contactable_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disiplines", force: :cascade do |t|
    t.string "name"
    t.string "summary"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "prefix"
    t.string "name"
    t.string "suffix"
    t.integer "employee_type"
    t.boolean "coordinator"
    t.bigint "location_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_employees_on_location_id"
  end

  create_table "facilities", force: :cascade do |t|
    t.string "name"
    t.integer "status"
    t.boolean "private"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "location_age_groups", force: :cascade do |t|
    t.bigint "location_id", null: false
    t.bigint "age_group_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["age_group_id"], name: "index_location_age_groups_on_age_group_id"
    t.index ["location_id"], name: "index_location_age_groups_on_location_id"
  end

  create_table "location_disiplines", force: :cascade do |t|
    t.bigint "location_id", null: false
    t.bigint "disipline_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["disipline_id"], name: "index_location_disiplines_on_disipline_id"
    t.index ["location_id"], name: "index_location_disiplines_on_location_id"
  end

  create_table "location_nf_types", force: :cascade do |t|
    t.bigint "location_id", null: false
    t.bigint "nf_type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_location_nf_types_on_location_id"
    t.index ["nf_type_id"], name: "index_location_nf_types_on_nf_type_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "address_line_1"
    t.string "address_line_2"
    t.string "address_line_3"
    t.string "city"
    t.string "state"
    t.string "zipcode"
    t.string "url"
    t.text "notes"
    t.bigint "facility_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["facility_id"], name: "index_locations_on_facility_id"
  end

  create_table "nf_types", force: :cascade do |t|
    t.string "name"
    t.string "abbreviation"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suffixes", force: :cascade do |t|
    t.string "name"
    t.string "abbreviation"
    t.text "summary"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "employees", "locations"
  add_foreign_key "location_age_groups", "age_groups"
  add_foreign_key "location_age_groups", "locations"
  add_foreign_key "location_disiplines", "disiplines"
  add_foreign_key "location_disiplines", "locations"
  add_foreign_key "location_nf_types", "locations"
  add_foreign_key "location_nf_types", "nf_types"
  add_foreign_key "locations", "facilities"
end
