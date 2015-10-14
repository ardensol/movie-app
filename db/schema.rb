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

ActiveRecord::Schema.define(version: 20151014002737) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "movie_lists", force: :cascade do |t|
    t.string   "query"
    t.string   "thumbnail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movie_lists_movies", id: false, force: :cascade do |t|
    t.integer "movie_id"
    t.integer "movie_list_id"
  end

  add_index "movie_lists_movies", ["movie_id"], name: "index_movie_lists_movies_on_movie_id", using: :btree
  add_index "movie_lists_movies", ["movie_list_id"], name: "index_movie_lists_movies_on_movie_list_id", using: :btree

  create_table "movies", force: :cascade do |t|
    t.string   "title"
    t.string   "genre"
    t.string   "thumbnail"
    t.date     "release_date"
    t.string   "director"
    t.string   "cast"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "movie_id"
    t.string   "user_email"
    t.float    "rating"
    t.text     "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
