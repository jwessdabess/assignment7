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

ActiveRecord::Schema.define(version: 20180404024415) do

  create_table "accounts", force: :cascade do |t|
    t.string "gender"
    t.integer "age"
    t.string "first_name"
    t.string "last_name"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_accounts_on_user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "tag_name"
    t.integer "todo_item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["todo_item_id"], name: "index_tags_on_todo_item_id"
  end

  create_table "tags_todo_items", id: false, force: :cascade do |t|
    t.integer "tag_id"
    t.integer "todo_item_id"
    t.index ["tag_id"], name: "index_tags_todo_items_on_tag_id"
    t.index ["todo_item_id"], name: "index_tags_todo_items_on_todo_item_id"
  end

  create_table "todo_items", force: :cascade do |t|
    t.date "due_date"
    t.string "task_title"
    t.string "description"
    t.boolean "done"
    t.integer "todo_list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["todo_list_id"], name: "index_todo_items_on_todo_list_id"
  end

  create_table "todo_lists", force: :cascade do |t|
    t.string "list_name"
    t.date "list_due_date"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_todo_lists_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "login"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
