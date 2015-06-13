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

ActiveRecord::Schema.define(version: 20150613085325) do

  create_table "addresses", force: :cascade do |t|
    t.integer  "address_id",   limit: 4,   null: false
    t.string   "no_direccion", limit: 255
    t.integer  "district_id",  limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "addresses", ["address_id"], name: "index_addresses_on_address_id", using: :btree

  create_table "client_addresses", force: :cascade do |t|
    t.string   "email",      limit: 255, null: false
    t.integer  "address_id", limit: 4,   null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "client_addresses", ["address_id"], name: "index_client_addresses_on_address_id", using: :btree
  add_index "client_addresses", ["email"], name: "index_client_addresses_on_email", using: :btree

  create_table "clients", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "name",                   limit: 255
    t.string   "phone",                  limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "clients", ["email"], name: "index_clients_on_email", unique: true, using: :btree
  add_index "clients", ["reset_password_token"], name: "index_clients_on_reset_password_token", unique: true, using: :btree

  create_table "dishes", force: :cascade do |t|
    t.integer  "dish_id",      limit: 4,   null: false
    t.string   "no_plato",     limit: 255
    t.string   "no_tipoplato", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "dishes", ["dish_id"], name: "index_dishes_on_dish_id", using: :btree

  create_table "districts", force: :cascade do |t|
    t.string   "district_id", limit: 255, null: false
    t.string   "no_distrito", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "districts", ["district_id"], name: "index_districts_on_district_id", using: :btree

  create_table "menu_details", force: :cascade do |t|
    t.integer  "menu_detail_id", limit: 4, null: false
    t.integer  "co_local",       limit: 4
    t.integer  "qt_precio",      limit: 4
    t.integer  "menu_id",        limit: 4, null: false
    t.integer  "dish_id",        limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "menu_details", ["menu_detail_id"], name: "index_menu_details_on_menu_detail_id", using: :btree

  create_table "menus", force: :cascade do |t|
    t.integer  "menu_id",       limit: 4, null: false
    t.date     "fe_fecha"
    t.integer  "qt_menu",       limit: 4
    t.integer  "restaurant_id", limit: 4, null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "menus", ["menu_id"], name: "index_menus_on_menu_id", using: :btree

  create_table "order_details", force: :cascade do |t|
    t.integer  "order_detail_id", limit: 4
    t.integer  "dish_id",         limit: 4
    t.string   "no_tipoplato",    limit: 255
    t.integer  "qt_precio",       limit: 4
    t.integer  "qt_cantidad",     limit: 4
    t.integer  "order_id",        limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "order_details", ["order_detail_id"], name: "index_order_details_on_order_detail_id", using: :btree

  create_table "orders", force: :cascade do |t|
    t.integer  "order_id",      limit: 4,   null: false
    t.string   "email",         limit: 255
    t.integer  "qt_montototal", limit: 4
    t.string   "estado",        limit: 255
    t.integer  "restaurant_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "orders", ["order_id"], name: "index_orders_on_order_id", using: :btree

  create_table "restaurants", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "name",                   limit: 255
    t.integer  "district_id",            limit: 4
    t.string   "password",               limit: 255
    t.string   "telefono",               limit: 255
    t.string   "direccion",              limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "avatar_file_name",       limit: 255
    t.string   "avatar_content_type",    limit: 255
    t.integer  "avatar_file_size",       limit: 4
    t.datetime "avatar_updated_at"
  end

  add_index "restaurants", ["email"], name: "index_restaurants_on_email", unique: true, using: :btree
  add_index "restaurants", ["reset_password_token"], name: "index_restaurants_on_reset_password_token", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
