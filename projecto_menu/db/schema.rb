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

ActiveRecord::Schema.define(version: 20150601021102) do

  create_table "dishes", force: true do |t|
    t.string   "description"
    t.integer  "dishes_type_id"
    t.integer  "local_id"
    t.integer  "order_status_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "dishes", ["dishes_type_id"], name: "index_dishes_on_dishes_type_id", using: :btree
  add_index "dishes", ["local_id"], name: "index_dishes_on_local_id", using: :btree
  add_index "dishes", ["order_status_id"], name: "index_dishes_on_order_status_id", using: :btree

  create_table "dishes_types", force: true do |t|
    t.string   "description"
    t.integer  "order_status_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "dishes_types", ["order_status_id"], name: "index_dishes_types_on_order_status_id", using: :btree

  create_table "locals", force: true do |t|
    t.string   "description"
    t.string   "address"
    t.string   "phone"
    t.integer  "order_status_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "locals", ["order_status_id"], name: "index_locals_on_order_status_id", using: :btree

  create_table "menus", force: true do |t|
    t.date     "date_menu"
    t.integer  "stock"
    t.decimal  "price",           precision: 10, scale: 0
    t.date     "date_register"
    t.integer  "order_status_id"
    t.integer  "local_id"
    t.integer  "week_id"
    t.integer  "dishes_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "menus", ["dishes_id"], name: "index_menus_on_dishes_id", using: :btree
  add_index "menus", ["local_id"], name: "index_menus_on_local_id", using: :btree
  add_index "menus", ["order_status_id"], name: "index_menus_on_order_status_id", using: :btree
  add_index "menus", ["week_id"], name: "index_menus_on_week_id", using: :btree

  create_table "order_details", force: true do |t|
    t.integer  "cant_dishes"
    t.integer  "order_headers_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "order_details", ["order_headers_id"], name: "index_order_details_on_order_headers_id", using: :btree

  create_table "order_headers", force: true do |t|
    t.date     "date_order"
    t.date     "date_update"
    t.date     "date_canceled"
    t.string   "observations"
    t.decimal  "amount",           precision: 10, scale: 0
    t.string   "datos_customer"
    t.string   "address_customer"
    t.string   "phone_customer"
    t.integer  "menus_id"
    t.integer  "order_status_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "order_headers", ["menus_id"], name: "index_order_headers_on_menus_id", using: :btree
  add_index "order_headers", ["order_status_id"], name: "index_order_headers_on_order_status_id", using: :btree

  create_table "order_statuses", force: true do |t|
    t.string   "name"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "weeks", force: true do |t|
    t.string   "name"
    t.date     "date_inic"
    t.date     "date_fina"
    t.integer  "order_status_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "weeks", ["order_status_id"], name: "index_weeks_on_order_status_id", using: :btree

end