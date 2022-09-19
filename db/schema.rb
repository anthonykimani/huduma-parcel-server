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

ActiveRecord::Schema.define(version: 2022_09_19_105319) do

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "address"
  end

  create_table "parcels", force: :cascade do |t|
    t.string "category"
    t.integer "weight"
    t.integer "price"
    t.integer "user_id"
    t.integer "location_id"
    t.string "parcel_destination"
    t.string "delivery_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.integer "phone_number"
    t.string "password"
    t.string "location"
  end

end