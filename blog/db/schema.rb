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

ActiveRecord::Schema.define(version: 20161205104140) do

  create_table "clubs", force: :cascade do |t|
    t.string   "fullname"
    t.string   "shortform"
    t.string   "regionalassociation"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string   "course_name"
    t.string   "location_string"
    t.string   "course_type"
    t.integer  "mistakesallowed_L1"
    t.integer  "mistakesallowed_L2"
    t.integer  "mistakesallowed_LJ"
    t.integer  "capacity"
    t.integer  "season_c"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "leadgames", force: :cascade do |t|
    t.integer  "season_g"
    t.integer  "amount_g"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "licences", force: :cascade do |t|
    t.integer  "licence_no"
    t.integer  "season_l"
    t.string   "licence_type"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "referees", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "mail"
    t.string   "username"
    t.integer  "role"
    t.string   "password_digest"
    t.integer  "club_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "referees", ["club_id"], name: "index_referees_on_club_id"

  create_table "registrations", force: :cascade do |t|
    t.integer  "mistakes"
    t.boolean  "participated"
    t.boolean  "passed"
    t.boolean  "deregistered"
    t.integer  "registrationthrough"
    t.integer  "registeredref"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
