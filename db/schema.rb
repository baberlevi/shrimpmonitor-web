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

ActiveRecord::Schema.define(version: 20140520022315) do

  create_table "companies", force: true do |t|
    t.string   "company_name"
    t.string   "company_approver_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", force: true do |t|
    t.string   "contact_name"
    t.string   "contact_email"
    t.string   "contact_phone"
    t.boolean  "sms"
    t.string   "contact_email2"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "do_sensor_readings", force: true do |t|
    t.datetime "reading_timestamp"
    t.float    "do_reading_value"
    t.float    "do_percent_reading"
    t.integer  "tank_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "k10_sensor_readings", force: true do |t|
    t.datetime "reading_timestamp"
    t.float    "ec_reading_value"
    t.float    "tds_reading_value"
    t.integer  "sal_reading_value"
    t.integer  "tank_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "k1_sensor_readings", force: true do |t|
    t.datetime "reading_timestamp"
    t.float    "ec_reading_value"
    t.float    "tds_reading_value"
    t.integer  "sal_reading_value"
    t.integer  "tank_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orp_sensor_readings", force: true do |t|
    t.datetime "reading_timestamp"
    t.float    "orp_reading_value"
    t.integer  "tank_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ph_sensor_readings", force: true do |t|
    t.datetime "reading_timestamp"
    t.float    "ph_reading_value"
    t.integer  "sensor_id"
    t.integer  "tank_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "role_name"
    t.string   "role_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sites", force: true do |t|
    t.string   "site_name"
    t.string   "site_zip"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tank_alarm_thresholds", force: true do |t|
    t.integer  "tank_id"
    t.float    "ph_threshold"
    t.float    "do_threshold"
    t.float    "orp_threshold"
    t.float    "k1_threshold"
    t.float    "k10_threshold"
    t.float    "temp_threshold"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tank_warning_thresholds", force: true do |t|
    t.integer  "tank_id"
    t.float    "ph_threshold"
    t.float    "do_threshold"
    t.float    "orp_threshold"
    t.float    "k1_threshold"
    t.float    "k10_threshold"
    t.float    "temp_threshold"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tanks", force: true do |t|
    t.integer  "site_id"
    t.text     "site_tank_label"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "temp_sensor_readings", force: true do |t|
    t.datetime "reading_timestamp"
    t.float    "temp_reading_value"
    t.text     "display_type"
    t.integer  "tank_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider"
    t.string   "uid"
    t.integer  "company_id"
    t.integer  "contact_id"
    t.string   "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
