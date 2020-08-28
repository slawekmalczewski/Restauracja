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

ActiveRecord::Schema.define(version: 2020_08_27_214032) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "blogs", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.boolean "published"
    t.datetime "valid_from"
    t.datetime "valid_to"
    t.text "main_poster"
    t.text "thumb_poster"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "schedule_publish"
    t.boolean "not_publish"
  end

  create_table "dishes", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.decimal "weight"
    t.string "weight_unit"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "dish_type"
  end

  create_table "dishes_menus", id: false, force: :cascade do |t|
    t.bigint "dish_id", null: false
    t.bigint "menu_id", null: false
  end

  create_table "menus", force: :cascade do |t|
    t.string "name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer "dish_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "default_menu"
    t.boolean "catering_menu"
    t.boolean "temporary_menu"
  end

  create_table "working_hours", force: :cascade do |t|
    t.string "day"
    t.time "open_time"
    t.time "close_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "operating"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end
