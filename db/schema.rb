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

ActiveRecord::Schema.define(version: 20131127234539) do

  create_table "areas", force: true do |t|
    t.integer  "level"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "attacks", force: true do |t|
    t.integer  "player_id"
    t.string   "name"
    t.integer  "strength"
    t.integer  "level"
    t.text     "description"
    t.text     "category"
    t.integer  "used"
    t.integer  "uses"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exits", force: true do |t|
    t.string   "name"
    t.integer  "room_id"
    t.integer  "leads_to_room_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fights", force: true do |t|
    t.integer  "fighter_1_id"
    t.integer  "fighter_2_id"
    t.integer  "winner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.string   "name"
    t.integer  "health"
    t.integer  "level"
    t.integer  "group_id"
    t.integer  "room_id"
    t.integer  "previous_room_id"
    t.integer  "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rooms", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "level"
    t.integer  "area_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shields", force: true do |t|
    t.integer  "player_id"
    t.string   "name"
    t.integer  "strength"
    t.integer  "level"
    t.text     "description"
    t.text     "category"
    t.integer  "used"
    t.integer  "uses"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spells", force: true do |t|
    t.string   "name"
    t.integer  "player_id"
    t.integer  "spell_action_id"
    t.integer  "level"
    t.text     "description"
    t.text     "category"
    t.integer  "used"
    t.integer  "uses"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "strategies", force: true do |t|
    t.string   "name"
    t.integer  "player_id"
    t.integer  "slot_1"
    t.integer  "slot_2"
    t.integer  "slot_3"
    t.integer  "slot_4"
    t.integer  "slot_5"
    t.integer  "slot_6"
    t.integer  "slot_7"
    t.integer  "slot_8"
    t.integer  "slot_9"
    t.integer  "slot_10"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
