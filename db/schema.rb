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

ActiveRecord::Schema.define(version: 20170116064903) do

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.integer  "phoneno",    limit: 10
    t.string   "email"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "daily_menus", force: :cascade do |t|
    t.integer  "date"
    t.string   "item"
    t.integer  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.string   "designation"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "company_id"
    t.index ["company_id"], name: "index_employees_on_company_id"
  end

  create_table "menu_items", force: :cascade do |t|
    t.string   "name"
    t.integer  "price"
    t.boolean  "veg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "vendors_id"
    t.integer  "vendor_id"
    t.index ["vendor_id"], name: "index_menu_items_on_vendor_id"
    t.index ["vendors_id"], name: "index_menu_items_on_vendors_id"
  end

  create_table "orders", force: :cascade do |t|
    t.date     "date"
    t.integer  "price"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "employees_id"
    t.integer  "dailymenus_id"
    t.index ["dailymenus_id"], name: "index_orders_on_dailymenus_id"
    t.index ["employees_id"], name: "index_orders_on_employees_id"
  end

  create_table "vendors", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

