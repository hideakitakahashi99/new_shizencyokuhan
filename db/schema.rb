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

ActiveRecord::Schema.define(version: 20170130102010) do

  create_table "additional_infos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "staff_member_id"
    t.string   "type"
    t.string   "farm_condition"
    t.string   "farm_condition_year"
    t.string   "masterpiece"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "explanation",         limit: 65535
    t.index ["staff_member_id"], name: "index_additional_infos_on_staff_member_id", using: :btree
    t.index ["type", "staff_member_id"], name: "index_additional_infos_on_type_and_staff_member_id", unique: true, using: :btree
  end

  create_table "addresses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "customer_id",                null: false
    t.string   "postal_code",                null: false
    t.string   "prefecture",                 null: false
    t.string   "city",                       null: false
    t.string   "address1",                   null: false
    t.string   "address2",                   null: false
    t.string   "company_name",  default: "", null: false
    t.string   "division_name", default: "", null: false
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "order_id"
    t.string   "phone"
    t.index ["city"], name: "index_addresses_on_city", using: :btree
    t.index ["customer_id"], name: "index_addresses_on_customer_id", using: :btree
    t.index ["prefecture", "city"], name: "index_addresses_on_prefecture_and_city", using: :btree
    t.index ["type", "city"], name: "index_addresses_on_type_and_city", using: :btree
    t.index ["type", "prefecture", "city"], name: "index_addresses_on_type_and_prefecture_and_city", using: :btree
  end

  create_table "administrators", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                           null: false
    t.string   "email_for_index",                 null: false
    t.string   "hashed_password"
    t.boolean  "suspended",       default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["email_for_index"], name: "index_administrators_on_email_for_index", unique: true, using: :btree
  end

  create_table "articles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "banks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "staff_member_id"
    t.string   "bank_name"
    t.string   "branch_name"
    t.string   "account_type"
    t.integer  "account_number"
    t.string   "account_holder"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["staff_member_id"], name: "index_banks_on_staff_member_id", using: :btree
  end

  create_table "carts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "staff_member_id"
    t.integer  "customer_id"
  end

  create_table "chatrooms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "topic"
    t.string   "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",            null: false
    t.string   "email_for_index",  null: false
    t.string   "hashed_password"
    t.string   "family_name",      null: false
    t.string   "given_name",       null: false
    t.string   "family_name_kana", null: false
    t.string   "given_name_kana",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["email_for_index"], name: "index_customers_on_email_for_index", unique: true, using: :btree
  end

  create_table "line_items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "product_id"
    t.integer  "cart_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "quantity",   default: 1
    t.integer  "order_id"
    t.integer  "address_id"
  end

  create_table "mapus", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.float    "longitude",   limit: 24
    t.float    "latitude",    limit: 24
    t.string   "address"
    t.text     "description", limit: 65535
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "content"
    t.integer  "customer_id"
    t.integer  "chatroom_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["chatroom_id"], name: "index_messages_on_chatroom_id", using: :btree
    t.index ["customer_id"], name: "index_messages_on_customer_id", using: :btree
  end

  create_table "microposts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "content"
    t.integer  "staff_member_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["staff_member_id", "created_at"], name: "index_microposts_on_staff_member_id_and_created_at", using: :btree
  end

  create_table "orders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "customer_id",                                    null: false
    t.integer  "address_id",                                     null: false
    t.boolean  "shipped",                        default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "staff_member_id"
    t.decimal  "total_price",     precision: 10
    t.string   "payment"
    t.index ["customer_id"], name: "index_orders_on_customer_id", using: :btree
  end

  create_table "pgs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "category",                                    null: false
    t.string   "variety",                                     null: false
    t.string   "method",                                      null: false
    t.text     "description",     limit: 65535
    t.integer  "net",                                         null: false
    t.decimal  "price",                         precision: 8, null: false
    t.integer  "stock",                                       null: false
    t.string   "staff_member_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
    t.index ["staff_member_id"], name: "index_pgs_on_staff_member_id", using: :btree
  end

  create_table "phones", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "customer_id",                      null: false
    t.integer  "address_id"
    t.string   "number",                           null: false
    t.string   "number_for_index",                 null: false
    t.boolean  "primary",          default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["address_id"], name: "index_phones_on_address_id", using: :btree
    t.index ["customer_id"], name: "index_phones_on_customer_id", using: :btree
    t.index ["number_for_index"], name: "index_phones_on_number_for_index", using: :btree
  end

  create_table "products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "category",                                                    null: false
    t.string   "variety",                                                     null: false
    t.string   "method",                                                      null: false
    t.text     "description",     limit: 65535
    t.integer  "net",                                                         null: false
    t.decimal  "price",                         precision: 8,                 null: false
    t.integer  "stock",                                                       null: false
    t.string   "staff_member_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
    t.string   "productimg"
    t.boolean  "seed_rising",                                 default: false, null: false
    t.string   "unit"
    t.string   "tag"
    t.index ["category"], name: "index_products_on_category", using: :btree
    t.index ["staff_member_id"], name: "index_products_on_staff_member_id", using: :btree
  end

  create_table "relationships", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["followed_id"], name: "index_relationships_on_followed_id", using: :btree
    t.index ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true, using: :btree
    t.index ["follower_id"], name: "index_relationships_on_follower_id", using: :btree
  end

  create_table "sales_terms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "staff_member_id"
    t.string   "type"
    t.integer  "delivery_fee",                  default: 0
    t.text     "legal_info",      limit: 65535
    t.text     "return_policy",   limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["staff_member_id"], name: "index_sales_terms_on_staff_member_id", using: :btree
    t.index ["type", "staff_member_id"], name: "index_sales_terms_on_type_and_staff_member_id", unique: true, using: :btree
  end

  create_table "schedules", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "harvest"
    t.string   "opening"
    t.integer  "staff_member_id"
    t.date     "harvest_date"
    t.datetime "opening_date"
    t.datetime "closing_date"
    t.boolean  "allDay"
    t.string   "event_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image1"
    t.string   "image2"
    t.string   "image3"
    t.index ["staff_member_id", "created_at"], name: "index_schedules_on_staff_member_id_and_created_at", using: :btree
  end

  create_table "staff_addresses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "staff_member_id",            default: 0,  null: false
    t.string   "postal_code",                default: "", null: false
    t.string   "prefecture",                 default: "", null: false
    t.string   "city",                       default: "", null: false
    t.string   "address1",                   default: "", null: false
    t.string   "address2",                   default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "latitude",        limit: 24
    t.float    "longitude",       limit: 24
    t.index ["prefecture"], name: "index_staff_addresses_on_prefecture", using: :btree
    t.index ["staff_member_id"], name: "index_staff_addresses_on_staff_member_id", using: :btree
  end

  create_table "staff_events", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "staff_member_id", null: false
    t.string   "type",            null: false
    t.datetime "created_at",      null: false
    t.index ["created_at"], name: "index_staff_events_on_created_at", using: :btree
    t.index ["staff_member_id", "created_at"], name: "index_staff_events_on_staff_member_id_and_created_at", using: :btree
  end

  create_table "staff_members", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
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
    t.string   "farmimg1"
    t.string   "farmimg2"
    t.string   "farmimg3"
    t.index ["email_for_index"], name: "index_staff_members_on_email_for_index", unique: true, using: :btree
  end

  create_table "tests", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tokens", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "customer_id", null: false
    t.string   "uuid",        null: false
    t.datetime "expire_at",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["customer_id"], name: "index_tokens_on_customer_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
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
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
