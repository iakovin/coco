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

ActiveRecord::Schema.define(version: 20161115141801) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "nests", force: :cascade do |t|
    t.integer  "max_capacity"
    t.time     "opening_hour"
    t.time     "closing_hour"
    t.integer  "price"
    t.string   "address"
    t.string   "city"
    t.string   "country"
    t.string   "zipcode"
    t.boolean  "wifi"
    t.boolean  "printer"
    t.boolean  "coffee"
    t.boolean  "tea"
    t.boolean  "microwave"
    t.text     "description"
    t.text     "other_equipment"
    t.boolean  "phoning_room"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_nests_on_user_id", using: :btree
  end

  create_table "user_reviews", force: :cascade do |t|
    t.text     "content"
    t.integer  "rating"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_reviews_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "birthdate"
    t.string   "job"
    t.string   "phone"
    t.string   "email"
    t.string   "skype"
    t.string   "website"
    t.text     "story"
    t.string   "sexe"
    t.string   "quote"
    t.boolean  "host"
    t.string   "dream_coworker"
    t.string   "song"
    t.string   "cv"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_foreign_key "nests", "users"
  add_foreign_key "user_reviews", "users"
end
