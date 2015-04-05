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

ActiveRecord::Schema.define(version: 20150401110341) do

  create_table "additional_infos", force: true do |t|
    t.integer  "staff_member_id"
    t.string   "type"
    t.string   "farm_condition"
    t.string   "farm_condition_year"
    t.string   "masterpiece"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "additional_infos", ["staff_member_id"], name: "index_additional_infos_on_staff_member_id"
  add_index "additional_infos", ["type", "staff_member_id"], name: "index_additional_infos_on_type_and_staff_member_id", unique: true

  create_table "addresses", force: true do |t|
    t.integer  "customer_id",                null: false
    t.string   "type",                       null: false
    t.string   "postal_code",                null: false
    t.string   "prefecture",                 null: false
    t.string   "city",                       null: false
    t.string   "address1",                   null: false
    t.string   "address2",                   null: false
    t.string   "company_name",  default: "", null: false
    t.string   "division_name", default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "addresses", ["city"], name: "index_addresses_on_city"
  add_index "addresses", ["customer_id"], name: "index_addresses_on_customer_id"
  add_index "addresses", ["prefecture", "city"], name: "index_addresses_on_prefecture_and_city"
  add_index "addresses", ["type", "city"], name: "index_addresses_on_type_and_city"
  add_index "addresses", ["type", "customer_id"], name: "index_addresses_on_type_and_customer_id", unique: true
  add_index "addresses", ["type", "prefecture", "city"], name: "index_addresses_on_type_and_prefecture_and_city"

  create_table "administrators", force: true do |t|
    t.string   "email",                           null: false
    t.string   "email_for_index",                 null: false
    t.string   "hashed_password"
    t.boolean  "suspended",       default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "administrators", ["email_for_index"], name: "index_administrators_on_email_for_index", unique: true

  create_table "articles", force: true do |t|
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "carts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.string   "email",            null: false
    t.string   "email_for_index",  null: false
    t.string   "hashed_password"
    t.string   "family_name",      null: false
    t.string   "given_name",       null: false
    t.string   "family_name_kana", null: false
    t.string   "given_name_kana",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "customers", ["email_for_index"], name: "index_customers_on_email_for_index", unique: true

  create_table "events", force: true do |t|
    t.integer  "staff_member_id", null: false
    t.string   "type",            null: false
    t.string   "title"
    t.datetime "start"
    t.datetime "end"
    t.string   "color"
    t.boolean  "allDay"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["staff_member_id"], name: "index_events_on_staff_member_id"
  add_index "events", ["type", "staff_member_id"], name: "index_events_on_type_and_staff_member_id", unique: true

  create_table "line_items", force: true do |t|
    t.integer  "product_id"
    t.integer  "cart_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "quantity",   default: 1
    t.integer  "order_id"
  end

  create_table "mapus", force: true do |t|
    t.float    "longitude"
    t.float    "latitude"
    t.string   "address"
    t.text     "description"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "microposts", force: true do |t|
    t.string   "content"
    t.integer  "staff_member_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "microposts", ["staff_member_id", "created_at"], name: "index_microposts_on_staff_member_id_and_created_at"

  create_table "orders", force: true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "email"
    t.string   "pay_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phones", force: true do |t|
    t.integer  "customer_id",                      null: false
    t.integer  "address_id"
    t.string   "number",                           null: false
    t.string   "number_for_index",                 null: false
    t.boolean  "primary",          default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "phones", ["address_id"], name: "index_phones_on_address_id"
  add_index "phones", ["customer_id"], name: "index_phones_on_customer_id"
  add_index "phones", ["number_for_index"], name: "index_phones_on_number_for_index"

  create_table "products", force: true do |t|
    t.string   "category",                                null: false
    t.string   "variety",                                 null: false
    t.string   "method",                                  null: false
    t.text     "description"
    t.string   "net",                                     null: false
    t.decimal  "price",           precision: 8, scale: 0, null: false
    t.string   "stock",                                   null: false
    t.integer  "staff_member_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
    t.string   "productimg"
  end

  add_index "products", ["category"], name: "index_products_on_category"

  create_table "projects", force: true do |t|
    t.string   "title"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "address"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "relationships", force: true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relationships", ["followed_id"], name: "index_relationships_on_followed_id"
  add_index "relationships", ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true
  add_index "relationships", ["follower_id"], name: "index_relationships_on_follower_id"

  create_table "sales_terms", force: true do |t|
    t.integer  "staff_member_id"
    t.string   "type"
    t.text     "delivery_fee"
    t.text     "legal_info"
    t.text     "return_policy"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sales_terms", ["staff_member_id"], name: "index_sales_terms_on_staff_member_id"
  add_index "sales_terms", ["type", "staff_member_id"], name: "index_sales_terms_on_type_and_staff_member_id", unique: true

  create_table "schedules", force: true do |t|
    t.string   "harvest"
    t.string   "opening"
    t.integer  "staff_member_id"
    t.date     "harvest_date"
    t.datetime "opening_date"
    t.datetime "closing_date"
    t.boolean  "allDay"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "schedules", ["staff_member_id", "created_at"], name: "index_schedules_on_staff_member_id_and_created_at"

  create_table "staff_addresses", force: true do |t|
    t.integer  "staff_member_id", null: false
    t.string   "postal_code",     null: false
    t.string   "prefecture",      null: false
    t.string   "city",            null: false
    t.string   "address1",        null: false
    t.string   "address2",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "latitude"
    t.float    "longitude"
  end

  add_index "staff_addresses", ["staff_member_id"], name: "index_staff_addresses_on_staff_member_id"

  create_table "staff_events", force: true do |t|
    t.integer  "staff_member_id", null: false
    t.string   "type",            null: false
    t.datetime "created_at",      null: false
  end

  add_index "staff_events", ["created_at"], name: "index_staff_events_on_created_at"
  add_index "staff_events", ["staff_member_id", "created_at"], name: "index_staff_events_on_staff_member_id_and_created_at"

  create_table "staff_members", force: true do |t|
    t.string   "farm_name"
    t.string   "email",                            null: false
    t.string   "email_for_index",                  null: false
    t.string   "family_name"
    t.string   "given_name"
    t.string   "family_name_kana"
    t.string   "given_name_kana"
    t.string   "hashed_password"
    t.date     "start_date"
    t.date     "end_date"
    t.boolean  "suspended",        default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
  end

  add_index "staff_members", ["email_for_index"], name: "index_staff_members_on_email_for_index", unique: true

  create_table "tasks", force: true do |t|
    t.string   "title"
    t.boolean  "done",       default: false
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tasks", ["project_id"], name: "index_tasks_on_project_id"

  create_table "tests", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tokens", force: true do |t|
    t.integer  "customer_id", null: false
    t.string   "uuid",        null: false
    t.datetime "expire_at",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tokens", ["customer_id"], name: "index_tokens_on_customer_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
