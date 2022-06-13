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

ActiveRecord::Schema[7.0].define(version: 2022_06_11_204729) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actors", force: :cascade do |t|
    t.bigint "name_id", null: false
    t.bigint "title_id", null: false
    t.string "character"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name_id"], name: "index_actors_on_name_id"
    t.index ["title_id"], name: "index_actors_on_title_id"
  end

  create_table "awards", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "awards_titles", id: false, force: :cascade do |t|
    t.bigint "award_id"
    t.bigint "title_id"
    t.index ["award_id"], name: "index_awards_titles_on_award_id"
    t.index ["title_id"], name: "index_awards_titles_on_title_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories_titles", id: false, force: :cascade do |t|
    t.bigint "category_id"
    t.bigint "title_id"
    t.index ["category_id"], name: "index_categories_titles_on_category_id"
    t.index ["title_id"], name: "index_categories_titles_on_title_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies_titles", id: false, force: :cascade do |t|
    t.bigint "company_id"
    t.bigint "title_id"
    t.index ["company_id"], name: "index_companies_titles_on_company_id"
    t.index ["title_id"], name: "index_companies_titles_on_title_id"
  end

  create_table "directors", force: :cascade do |t|
    t.bigint "name_id", null: false
    t.bigint "title_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name_id"], name: "index_directors_on_name_id"
    t.index ["title_id"], name: "index_directors_on_title_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "img_title"
    t.string "image"
    t.bigint "title_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["title_id"], name: "index_images_on_title_id"
  end

  create_table "names", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "title_id", null: false
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["title_id"], name: "index_ratings_on_title_id"
    t.index ["user_id"], name: "index_ratings_on_user_id"
  end

  create_table "stars", force: :cascade do |t|
    t.bigint "name_id", null: false
    t.bigint "title_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name_id"], name: "index_stars_on_name_id"
    t.index ["title_id"], name: "index_stars_on_title_id"
  end

  create_table "titles", force: :cascade do |t|
    t.string "title"
    t.string "title_type"
    t.integer "year"
    t.string "image"
    t.date "release_date"
    t.integer "minutes"
    t.text "plot"
    t.string "countries"
    t.decimal "rating"
    t.integer "votes_count"
    t.string "keywords"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "videos", force: :cascade do |t|
    t.string "video_title"
    t.string "youtube_link"
    t.bigint "title_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["title_id"], name: "index_videos_on_title_id"
  end

  create_table "writers", force: :cascade do |t|
    t.bigint "name_id", null: false
    t.bigint "title_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name_id"], name: "index_writers_on_name_id"
    t.index ["title_id"], name: "index_writers_on_title_id"
  end

  add_foreign_key "actors", "names"
  add_foreign_key "actors", "titles"
  add_foreign_key "directors", "names"
  add_foreign_key "directors", "titles"
  add_foreign_key "images", "titles"
  add_foreign_key "ratings", "titles"
  add_foreign_key "ratings", "users"
  add_foreign_key "stars", "names"
  add_foreign_key "stars", "titles"
  add_foreign_key "videos", "titles"
  add_foreign_key "writers", "names"
  add_foreign_key "writers", "titles"
end
