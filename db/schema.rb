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

ActiveRecord::Schema.define(version: 20150623021304) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string   "formatted_address",           null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "street_address"
    t.string   "route"
    t.string   "intersection"
    t.string   "political"
    t.string   "country"
    t.string   "administrative_area_level_1"
    t.string   "administrative_area_level_2"
    t.string   "administrative_area_level_3"
    t.string   "administrative_area_level_4"
    t.string   "administrative_area_level_5"
    t.string   "colloquial_area"
    t.string   "locality"
    t.string   "sublocality"
    t.string   "neighborhood"
    t.string   "premise"
    t.string   "subpremise"
    t.string   "postal_code"
    t.string   "natural_feature"
    t.string   "airport"
    t.string   "park"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string   "name",                   null: false
    t.integer  "restaurant_location_id", null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "address_id"
  end

end
