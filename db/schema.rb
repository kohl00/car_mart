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

ActiveRecord::Schema.define(version: 20150527172759) do

  create_table "cars", force: :cascade do |t|
    t.integer  "price"
    t.string   "make"
    t.integer  "user_id"
    t.boolean  "arrived"
    t.string   "kind"
    t.integer  "year"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.text     "description"
    t.string   "car_image_id"
  end

  create_table "charges", force: :cascade do |t|
    t.integer  "car_id"
    t.integer  "price"
    t.integer  "user_id"
    t.integer  "vendor_id"
    t.string   "token"
    t.string   "customer_id"
    t.boolean  "completed",   default: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "provider"
    t.string   "uid"
    t.string   "access_code"
    t.string   "name"
    t.string   "stripe_user_id"
    t.string   "publishable_key"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
    t.boolean  "vendor"
    t.string   "profile_image_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
