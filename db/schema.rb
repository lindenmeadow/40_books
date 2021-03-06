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

ActiveRecord::Schema.define(version: 2021_02_18_200050) do

  create_table "award_winner_books", force: :cascade do |t|
    t.string "title"
    t.date "date_finished"
    t.integer "pages"
    t.string "author"
    t.string "illustrator"
    t.text "award"
    t.string "main_characters"
    t.string "setting"
    t.text "problem"
    t.text "solution"
    t.string "rating"
    t.text "rationale"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "biography_books", force: :cascade do |t|
    t.string "title"
    t.date "date_finished"
    t.integer "pages"
    t.string "author"
    t.text "things_learned"
    t.text "words_learned"
    t.text "question"
    t.text "connection"
    t.string "rating"
    t.text "rationale"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

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
    t.integer "user_id"
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
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "informational_books", force: :cascade do |t|
    t.string "title"
    t.date "date_finished"
    t.integer "pages"
    t.string "author"
    t.text "things_learned"
    t.text "words_learned"
    t.text "question"
    t.text "connection"
    t.string "rating"
    t.text "rationale"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "mystery_books", force: :cascade do |t|
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
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "poetry_anthology_books", force: :cascade do |t|
    t.string "title"
    t.date "date_finished"
    t.integer "pages"
    t.string "author"
    t.string "illustrator"
    t.text "favorite_poem"
    t.text "least_favorite_poem"
    t.string "rating"
    t.text "rationale"
    t.text "literal_language"
    t.text "nonliteral_language"
    t.text "stanza"
    t.integer "user_id"
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
    t.integer "user_id"
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
    t.integer "user_id"
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
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
