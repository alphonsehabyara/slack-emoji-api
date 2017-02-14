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

ActiveRecord::Schema.define(version: 20170214100609) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "slack_emojis", force: :cascade do |t|
    t.string   "people"
    t.string   "nature"
    t.string   "food_and_drink"
    t.string   "celebration"
    t.string   "activity"
    t.string   "travel_and_places"
    t.string   "objects_and_symbols"
    t.string   "custom"
    t.string   "emoji"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

end
