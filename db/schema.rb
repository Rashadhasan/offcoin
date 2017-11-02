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

ActiveRecord::Schema.define(version: 20171102114321) do

  create_table "areas", force: :cascade do |t|
    t.string "name"
    t.integer "city_id"
    t.integer "pincode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.integer "state_id"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.float "latitude"
    t.float "longitude"
    t.integer "outlet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "merchant_categories", force: :cascade do |t|
    t.string "category_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "merchant_logins", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "merchant_offers", force: :cascade do |t|
    t.integer "merchant_id"
    t.string "offername"
    t.integer "days"
    t.datetime "offer_start_at"
    t.datetime "offer_end_at"
    t.datetime "offer_start_time"
    t.datetime "offer_end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "merchant_sub_categories", force: :cascade do |t|
    t.string "sub_category_type"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "merchants", force: :cascade do |t|
    t.string "business_name"
    t.integer "outlet_count"
    t.string "address"
    t.text "description"
    t.integer "like_count"
    t.integer "share_count"
    t.integer "area_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "outlets", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.integer "aread_id"
    t.integer "category_id"
    t.integer "merchant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
