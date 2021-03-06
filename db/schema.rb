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

ActiveRecord::Schema.define(version: 20140815190518) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cast_memberships", force: true do |t|
    t.string   "character_name"
    t.integer  "talent_id"
    t.integer  "movie_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cast_memberships", ["movie_id"], name: "index_cast_memberships_on_movie_id", using: :btree
  add_index "cast_memberships", ["talent_id"], name: "index_cast_memberships_on_talent_id", using: :btree

  create_table "crew_memberships", force: true do |t|
    t.string   "position"
    t.integer  "talent_id"
    t.integer  "movie_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "crew_memberships", ["movie_id"], name: "index_crew_memberships_on_movie_id", using: :btree
  add_index "crew_memberships", ["talent_id"], name: "index_crew_memberships_on_talent_id", using: :btree

  create_table "movies", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "talents", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                           null: false
    t.string   "password_digest",                 null: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.boolean  "admin",           default: false, null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
