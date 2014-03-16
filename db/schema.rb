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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131215175349) do

  create_table "addresses", :force => true do |t|
    t.string   "streetno"
    t.string   "zip"
    t.string   "city"
    t.string   "country"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "phone1"
    t.string   "phonem"
    t.string   "fname"
    t.string   "string"
    t.string   "lname"
  end

  create_table "admins", :force => true do |t|
    t.integer  "user_id"
    t.boolean  "admin"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.boolean  "group1"
    t.boolean  "group2"
    t.boolean  "group3"
  end

  create_table "bookings", :force => true do |t|
    t.date     "adate"
    t.date     "ddate"
    t.integer  "nights"
    t.integer  "people"
    t.decimal  "cleaning"
    t.decimal  "price"
    t.decimal  "downp"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rates", :force => true do |t|
    t.integer  "apartment"
    t.integer  "season"
    t.integer  "price"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "seasons", :force => true do |t|
    t.integer  "season"
    t.string   "langu"
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "statusvalues", :force => true do |t|
    t.integer  "status"
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "langu"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
    t.string   "encrypted_password"
    t.string   "salt"
    t.string   "remember_token"
    t.boolean  "admin",              :default => false
  end

  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

  create_table "ustatuses", :force => true do |t|
    t.integer  "user_id"
    t.integer  "status"
    t.date     "sdate"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
