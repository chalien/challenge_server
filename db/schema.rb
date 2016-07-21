# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160720184941) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "households", force: :cascade do |t|
    t.string   "address"
    t.string   "zip"
    t.string   "city"
    t.string   "state"
    t.integer  "number_of_bedrooms"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.integer  "age"
    t.string   "gender"
    t.integer  "household_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["household_id"], name: "index_people_on_household_id", using: :btree
  end

  create_table "vehicles", force: :cascade do |t|
    t.string   "make"
    t.string   "model"
    t.string   "year"
    t.string   "license_plate"
    t.integer  "person_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["person_id"], name: "index_vehicles_on_person_id", using: :btree
  end

  add_foreign_key "people", "households"
  add_foreign_key "vehicles", "people"
end
