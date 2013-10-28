# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20131028072414) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignments", force: true do |t|
    t.integer  "service_id"
    t.integer  "container_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "assignments", ["container_id"], name: "index_assignments_on_container_id", using: :btree
  add_index "assignments", ["service_id"], name: "index_assignments_on_service_id", using: :btree

  create_table "containers", force: true do |t|
    t.string   "plate"
    t.string   "economic",   limit: 80
    t.string   "type"
    t.string   "color"
    t.string   "features"
    t.integer  "line_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "containers", ["line_id"], name: "index_containers_on_line_id", using: :btree

  create_table "districts", force: true do |t|
    t.integer  "state_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "districts", ["state_id"], name: "index_districts_on_state_id", using: :btree

  create_table "heads", force: true do |t|
    t.string   "plate"
    t.string   "economic",   limit: 80
    t.string   "brand"
    t.string   "color"
    t.integer  "year"
    t.integer  "line_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "heads", ["line_id"], name: "index_heads_on_line_id", using: :btree

  create_table "lines", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cedis_id"
    t.integer  "status"
    t.date     "f_alta"
    t.date     "f_baja"
  end

  create_table "locations", force: true do |t|
    t.string   "name"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "state_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "description"
  end

  add_index "locations", ["state_id"], name: "index_locations_on_state_id", using: :btree

  create_table "services", force: true do |t|
    t.string   "shipment"
    t.datetime "departure_date"
    t.datetime "arrival_date"
    t.datetime "release_date"
    t.integer  "status"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "location_id"
    t.integer  "head_id"
    t.integer  "departure_id"
    t.integer  "arrival_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "latitude_des"
    t.float    "longitude_dest"
  end

  add_index "services", ["head_id"], name: "index_services_on_head_id", using: :btree
  add_index "services", ["location_id"], name: "index_services_on_location_id", using: :btree

  create_table "states", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.boolean  "admin",                  default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
