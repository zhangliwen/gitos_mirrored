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

ActiveRecord::Schema.define(version: 2019_02_13_155218) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "custom_categories", force: :cascade do |t|
    t.string "ownerable_type"
    t.bigint "ownerable_id", comment: "属于迭代/项目/仓库"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ownerable_type", "ownerable_id"], name: "index_custom_categories_on_ownerable_type_and_ownerable_id"
  end

  create_table "custom_statuses", force: :cascade do |t|
    t.bigint "custom_category_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["custom_category_id"], name: "index_custom_statuses_on_custom_category_id"
  end

  create_table "iterations", force: :cascade do |t|
    t.bigint "project_id"
    t.bigint "user_id"
    t.string "user_name"
    t.string "user_email"
    t.datetime "commit_time"
    t.string "context"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_iterations_on_project_id"
    t.index ["user_id"], name: "index_iterations_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name", default: ""
    t.string "description", default: ""
    t.string "homepage", default: ""
    t.boolean "is_public", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "task_categories", force: :cascade do |t|
    t.string "ownerable_type"
    t.bigint "ownerable_id", comment: "属于迭代/项目/仓库"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ownerable_type", "ownerable_id"], name: "index_task_categories_on_ownerable_type_and_ownerable_id"
  end

  create_table "task_statuses", force: :cascade do |t|
    t.bigint "task_category_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["task_category_id"], name: "index_task_statuses_on_task_category_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "ownerable_type"
    t.bigint "ownerable_id", comment: "属于迭代/项目/仓库"
    t.string "category_type"
    t.bigint "category_id", comment: "类型：多态"
    t.string "status_type"
    t.bigint "status_id", comment: "状态: 多态"
    t.string "title", default: ""
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_type", "category_id"], name: "index_tasks_on_category_type_and_category_id"
    t.index ["ownerable_type", "ownerable_id"], name: "index_tasks_on_ownerable_type_and_ownerable_id"
    t.index ["status_type", "status_id"], name: "index_tasks_on_status_type_and_status_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "warehouses", force: :cascade do |t|
    t.bigint "project_id"
    t.string "name"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_warehouses_on_project_id"
  end

end
