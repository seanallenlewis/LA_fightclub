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

ActiveRecord::Schema.define(version: 20161223040548) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fighters", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "weight"
    t.integer  "age"
    t.string   "style"
    t.string   "location"
    t.integer  "wins"
    t.integer  "losses"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "likes1"
    t.string   "hates1"
    t.string   "likes2"
    t.string   "likes3"
    t.string   "like4"
    t.string   "likes5"
    t.string   "likes6"
    t.string   "likes7"
    t.string   "likes8"
    t.string   "like9"
    t.string   "like10"
    t.string   "hates2"
    t.string   "hates3"
    t.string   "hates4"
    t.string   "hates5"
    t.string   "hates6"
    t.string   "hates7"
    t.string   "hates8"
    t.string   "hates9"
    t.string   "hates10"
  end

end
