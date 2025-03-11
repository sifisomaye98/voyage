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

ActiveRecord::Schema[7.1].define(version: 2025_03_11_111143) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "destinations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flights", force: :cascade do |t|
    t.string "airline"
    t.integer "price"
    t.string "departure"
    t.string "arrival"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hotels", force: :cascade do |t|
    t.string "name"
    t.integer "price_per_night"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "infos", force: :cascade do |t|
    t.bigint "destination_id", null: false
    t.string "visa"
    t.string "safety"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["destination_id"], name: "index_infos_on_destination_id"
  end

  create_table "itineraries", force: :cascade do |t|
    t.string "activities"
    t.bigint "trip_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trip_id"], name: "index_itineraries_on_trip_id"
  end

  create_table "packages", force: :cascade do |t|
    t.bigint "flight_id", null: false
    t.bigint "hotel_id", null: false
    t.integer "category"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flight_id"], name: "index_packages_on_flight_id"
    t.index ["hotel_id"], name: "index_packages_on_hotel_id"
  end

  create_table "trips", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "package_id", null: false
    t.bigint "destination_id", null: false
    t.integer "budget"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["destination_id"], name: "index_trips_on_destination_id"
    t.index ["package_id"], name: "index_trips_on_package_id"
    t.index ["user_id"], name: "index_trips_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "infos", "destinations"
  add_foreign_key "itineraries", "trips"
  add_foreign_key "packages", "flights"
  add_foreign_key "packages", "hotels"
  add_foreign_key "trips", "destinations"
  add_foreign_key "trips", "packages"
  add_foreign_key "trips", "users"
end
