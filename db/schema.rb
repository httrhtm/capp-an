# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_07_28_064721) do

  create_table "pictures", charset: "utf8mb4", force: :cascade do |t|
    t.text "src"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "products", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", limit: 255
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "services", charset: "utf8mb4", force: :cascade do |t|
    t.string "content", limit: 255
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shops", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "pictures_id"
    t.bigint "products_id"
    t.bigint "services_id"
    t.string "name", limit: 255, null: false
    t.string "name_kana", limit: 255, null: false
    t.text "introduction"
    t.string "phone", limit: 255
    t.string "address", limit: 255
    t.string "transportation", limit: 255
    t.string "open", limit: 255
    t.string "close", limit: 255
    t.string "day_closed", limit: 255
    t.text "website"
    t.integer "closedFlag", limit: 1, default: 0, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pictures_id"], name: "index_shops_on_pictures_id"
    t.index ["products_id"], name: "index_shops_on_products_id"
    t.index ["services_id"], name: "index_shops_on_services_id"
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.string "username", null: false
    t.string "email", null: false
    t.string "encrypted_password", null: false
    t.integer "admin", limit: 1, default: 0, null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username"
  end

  add_foreign_key "shops", "pictures", column: "pictures_id"
  add_foreign_key "shops", "products", column: "products_id"
  add_foreign_key "shops", "services", column: "services_id"
end
