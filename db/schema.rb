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

ActiveRecord::Schema.define(version: 2018_08_03_155305) do

  create_table "donations", force: :cascade do |t|
    t.decimal "amount", precision: 10, scale: 2
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matches", force: :cascade do |t|
    t.decimal "max_amount", precision: 10, scale: 2
    t.string "email"
    t.boolean "active"
    t.decimal "ratio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "fixed_match"
  end

  create_table "matches_donations", force: :cascade do |t|
    t.integer "match_id"
    t.integer "donation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["donation_id"], name: "index_matches_donations_on_donation_id"
    t.index ["match_id"], name: "index_matches_donations_on_match_id"
  end

end
