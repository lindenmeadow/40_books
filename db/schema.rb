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

ActiveRecord::Schema.define(version: 2021_02_04_004358) do

  create_table "fantasy_books", force: :cascade do |t|
    t.string "title"
    t.date "date_finished"
    t.integer "pages"
    t.string "author"
    t.string "illustrator"
    t.text "genre_explanation"
    t.string "main_characters"
    t.string "setting"
    t.text "problem"
    t.text "solution"
    t.string "rating"
    t.text "rationale"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "historical_fiction_books", force: :cascade do |t|
    t.string "title"
    t.date "date_finished"
    t.integer "pages"
    t.string "author"
    t.string "illustrator"
    t.text "genre_explanation"
    t.string "main_characters"
    t.string "setting"
    t.text "problem"
    t.text "solution"
    t.string "rating"
    t.text "rationale"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "realistic_fiction_books", force: :cascade do |t|
    t.string "title"
    t.date "date_finished"
    t.integer "pages"
    t.string "author"
    t.text "genre_explanation"
    t.string "main_characters"
    t.string "setting"
    t.text "problem"
    t.text "solution"
    t.string "rating"
    t.text "rationale"
    t.string "illustrator"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "science_fiction_books", force: :cascade do |t|
    t.string "title"
    t.date "date_finished"
    t.integer "pages"
    t.string "author"
    t.string "illustrator"
    t.text "genre_explanation"
    t.string "main_characters"
    t.string "setting"
    t.text "problem"
    t.text "solution"
    t.string "rating"
    t.text "rationale"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "traditional_literature_books", force: :cascade do |t|
    t.string "title"
    t.date "date_finished"
    t.integer "pages"
    t.string "author"
    t.string "illustrator"
    t.string "country"
    t.string "characters"
    t.string "setting"
    t.text "problem"
    t.text "solution"
    t.string "rating"
    t.text "rationale"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
