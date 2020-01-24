# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_21_223205) do

  create_table "games", force: :cascade do |t|
    t.integer "player_id"
    t.integer "question_id"
    t.string "win"
    t.index ["player_id"], name: "index_games_on_player_id"
    t.index ["question_id"], name: "index_games_on_question_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.integer "score", default: 0
  end

  create_table "questions", force: :cascade do |t|
    t.string "category"
    t.string "difficulty", default: "easy"
    t.string "question"
    t.string "correct"
    t.string "false1"
    t.string "false2"
    t.string "false3"
    t.integer "points", default: 10
  end

end
