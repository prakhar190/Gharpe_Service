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

ActiveRecord::Schema.define(version: 20170504190031) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "booked_services", force: :cascade do |t|
    t.date     "preffered_date"
    t.time     "preffered_time"
    t.string   "postal_code"
    t.integer  "user_id"
    t.integer  "service_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feedbacks", force: :cascade do |t|
    t.text     "feedback"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "users_id"
    t.index ["users_id"], name: "index_feedbacks_on_users_id", using: :btree
  end

  create_table "product_categories", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.integer  "quantity"
    t.integer  "price"
    t.integer  "star_ratings"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "product_categories_id"
    t.index ["product_categories_id"], name: "index_products_on_product_categories_id", using: :btree
  end

  create_table "services", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.boolean  "active"
    t.boolean  "trending"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "categories_id"
    t.index ["categories_id"], name: "index_services_on_categories_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "mobile"
    t.text     "address"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "postal_code"
    t.string   "passport_number"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "feedbacks", "users", column: "users_id"
  add_foreign_key "products", "product_categories", column: "product_categories_id"
  add_foreign_key "services", "categories", column: "categories_id"
end
