# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2023_10_26_183819) do
  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "breed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dogsitters", force: :cascade do |t|
    t.string "name"
    t.integer "experience"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "strolls", force: :cascade do |t|
    t.date "date"
    t.integer "dog_id"
    t.integer "dogsitter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dog_id"], name: "index_strolls_on_dog_id"
    t.index ["dogsitter_id"], name: "index_strolls_on_dogsitter_id"
  end

  add_foreign_key "strolls", "dogs"
  add_foreign_key "strolls", "dogsitters"
end
