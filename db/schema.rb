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

ActiveRecord::Schema.define(version: 20161006063952) do

  create_table "event_photos", force: :cascade do |t|
    t.integer  "event_id"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "topic"
    t.datetime "start_time"
    t.datetime "end_time"
    t.string   "location"
    t.text     "content"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "user_id"
    t.boolean  "is_active",  default: true
  end

  create_table "images", force: :cascade do |t|
    t.string   "url"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "images", ["user_id"], name: "index_images_on_user_id"

  create_table "profiles", force: :cascade do |t|
    t.text     "content"
    t.string   "url"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "simple_captcha_data", force: :cascade do |t|
    t.string   "key",        limit: 40
    t.string   "value",      limit: 6
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "simple_captcha_data", ["key"], name: "idx_key"

  create_table "user_events", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_photos", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 2000000000, default: "", null: false
    t.string   "encrypted_password",     limit: 2000000000, default: "", null: false
    t.string   "reset_password_token",   limit: 2000000000
    t.datetime "reset_password_sent_at", limit: 2000000000
    t.datetime "remember_created_at",    limit: 2000000000
    t.integer  "sign_in_count",                             default: 0,  null: false
    t.datetime "current_sign_in_at",     limit: 2000000000
    t.datetime "last_sign_in_at",        limit: 2000000000
    t.string   "current_sign_in_ip",     limit: 2000000000
    t.string   "last_sign_in_ip",        limit: 2000000000
    t.datetime "created_at",             limit: 2000000000,              null: false
    t.datetime "updated_at",             limit: 2000000000,              null: false
    t.string   "name",                   limit: 2000000000
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
