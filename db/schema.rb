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

ActiveRecord::Schema.define(version: 20160604165147) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "advocacy_groups", force: :cascade do |t|
    t.string   "org_name"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "county"
    t.string   "contact_name"
    t.string   "phone"
    t.integer  "detention_center_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "deaths", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "cause"
    t.integer  "age"
    t.date     "date"
    t.string   "lawsuit"
    t.integer  "detention_center_id"
    t.string   "country_of_origin"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "detention_centers", force: :cascade do |t|
    t.string   "name"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "county"
    t.integer  "operator_id"
    t.integer  "avg_lngth_stay"
    t.decimal  "per_diem",       precision: 5, scale: 2
    t.string   "det_standard"
    t.string   "type_contract"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "hrv_reports", force: :cascade do |t|
    t.string   "url"
    t.string   "report_name"
    t.integer  "detention_center_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "operators", force: :cascade do |t|
    t.string   "type"
    t.string   "name"
    t.integer  "networth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "press_reports", force: :cascade do |t|
    t.string   "url"
    t.string   "article_name"
    t.integer  "death_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "repercussions", force: :cascade do |t|
    t.string   "org_name"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.string   "contact_name"
    t.integer  "detention_center_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

end
