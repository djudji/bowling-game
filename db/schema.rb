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

ActiveRecord::Schema.define(version: 20160224224106) do

  create_table "balls", force: :cascade do |t|
    t.integer  "ball_number"
    t.integer  "pins_knocked"
    t.integer  "frame_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "balls", ["frame_id"], name: "index_balls_on_frame_id"

  create_table "frames", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "frame_number"
    t.integer  "frame_score"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "frames", ["game_id"], name: "index_frames_on_game_id"

  create_table "games", force: :cascade do |t|
    t.integer  "game_score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
