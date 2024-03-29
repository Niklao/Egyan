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

ActiveRecord::Schema.define(version: 20140629164841) do

  create_table "books", force: true do |t|
    t.string   "title"
    t.string   "author_id"
    t.string   "author_name"
    t.string   "edition"
    t.string   "discrip"
    t.string   "relese_date"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email_id"
    t.integer  "phone_no"
    t.date     "birth_date"
    t.string   "address"
    t.integer  "zip_code"
    t.string   "gender"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type"
  end

end
