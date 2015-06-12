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

ActiveRecord::Schema.define(version: 20150612103102) do

  create_table "proposals", force: true do |t|
    t.string   "headline"
    t.string   "subline"
    t.text     "description"
    t.string   "class"
    t.string   "duration"
    t.string   "accepted"
    t.string   "date"
    t.string   "track"
    t.string   "slot"
    t.string   "confirmed"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "seminars", force: true do |t|
    t.integer  "user_id"
    t.string   "headline"
    t.string   "subline"
    t.text     "description"
    t.integer  "duration",    limit: 255
    t.string   "slot"
    t.string   "confirmed"
    t.string   "category"
    t.string   "accepted"
    t.string   "track"
    t.string   "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "room"
  end

  add_index "seminars", ["user_id"], name: "index_seminars_on_user_id"

  create_table "sessions", force: true do |t|
    t.integer  "user_id"
    t.string   "headline"
    t.string   "subline"
    t.text     "description"
    t.string   "duration"
    t.string   "slot"
    t.string   "confirmed"
    t.string   "class"
    t.string   "accepted"
    t.string   "track"
    t.string   "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["user_id"], name: "index_sessions_on_user_id"

  create_table "users", force: true do |t|
    t.string   "email",                              default: "",        null: false
    t.string   "encrypted_password",                 default: "",        null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0,         null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "family_name"
    t.string   "project"
    t.string   "shirt_size"
    t.string   "meal_restriction"
    t.string   "webpage"
    t.text     "bio"
    t.string   "sponsoring_needed"
    t.string   "sponsorship_amount"
    t.string   "show_data"
    t.integer  "length_of_stay",         limit: 255
    t.string   "arrival_date"
    t.string   "arrival_flight_number"
    t.string   "arrival_time"
    t.string   "role",                               default: "speaker"
    t.string   "avatar"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
