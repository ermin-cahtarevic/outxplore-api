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

ActiveRecord::Schema.define(version: 2020_10_15_163711) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "host_applications", force: :cascade do |t|
    t.bigint "user_id"
    t.string "activity_type"
    t.string "previous_hosting_experience"
    t.integer "guest_max_num"
    t.text "additional_experience_info"
    t.string "location"
    t.string "location_type"
    t.text "detailed_description"
    t.text "links"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_host_applications_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
  end

  add_foreign_key "host_applications", "users"
end
