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

ActiveRecord::Schema.define(version: 20150501074108) do

  create_table "places", force: :cascade do |t|
    t.string   "name"
    t.string   "address_line_one"
    t.string   "address_line_two"
    t.string   "postcode"
    t.string   "tube_station"
    t.string   "price"
    t.text     "description"
    t.string   "opening_times_monday"
    t.string   "opening_times_tuesday"
    t.string   "opening_times_wednesday"
    t.string   "opening_times_thursday"
    t.string   "opening_times_friday"
    t.string   "opening_times_saturday"
    t.string   "opening_times_sunday"
    t.string   "category"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
