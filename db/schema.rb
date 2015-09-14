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

ActiveRecord::Schema.define(version: 20150912195458) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "drinks", force: :cascade do |t|
    t.string   "name"
    t.integer  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.datetime "date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "guest_id"
    t.integer  "viplounge_id"
  end

  add_index "events", ["guest_id"], name: "index_events_on_guest_id", using: :btree
  add_index "events", ["viplounge_id"], name: "index_events_on_viplounge_id", using: :btree

  create_table "guests", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "membersclubs", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.string   "genre"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "viplounge_id"
  end

  add_index "membersclubs", ["viplounge_id"], name: "index_membersclubs_on_viplounge_id", using: :btree

  create_table "memberships", force: :cascade do |t|
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "guest_id"
    t.integer  "membersclub_id"
  end

  add_index "memberships", ["guest_id"], name: "index_memberships_on_guest_id", using: :btree
  add_index "memberships", ["membersclub_id"], name: "index_memberships_on_membersclub_id", using: :btree

  create_table "orders", force: :cascade do |t|
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "drink_id"
    t.integer  "membersclub_id"
    t.integer  "guest_id"
  end

  add_index "orders", ["drink_id"], name: "index_orders_on_drink_id", using: :btree
  add_index "orders", ["guest_id"], name: "index_orders_on_guest_id", using: :btree
  add_index "orders", ["membersclub_id"], name: "index_orders_on_membersclub_id", using: :btree

  create_table "viplounges", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "guest_id"
    t.integer  "event_id"
  end

  add_index "viplounges", ["event_id"], name: "index_viplounges_on_event_id", using: :btree
  add_index "viplounges", ["guest_id"], name: "index_viplounges_on_guest_id", using: :btree

  add_foreign_key "events", "guests"
  add_foreign_key "events", "viplounges"
  add_foreign_key "membersclubs", "viplounges"
  add_foreign_key "memberships", "guests"
  add_foreign_key "memberships", "membersclubs"
  add_foreign_key "orders", "drinks"
  add_foreign_key "orders", "guests"
  add_foreign_key "orders", "membersclubs"
  add_foreign_key "viplounges", "events"
  add_foreign_key "viplounges", "guests"
end
