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

ActiveRecord::Schema.define(version: 2018_10_08_203752) do

  create_table "activations", force: :cascade do |t|
    t.string "nickname", null: false
    t.string "val1"
    t.string "val2"
    t.string "val3"
    t.string "val4"
    t.string "val5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nickname"], name: "index_activations_on_nickname", unique: true
  end

  create_table "contacts", force: :cascade do |t|
    t.string "nickname", null: false
    t.string "val1"
    t.string "val2"
    t.string "val3"
    t.string "val4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nickname"], name: "index_contacts_on_nickname", unique: true
  end

  create_table "infos", force: :cascade do |t|
    t.string "nickname", null: false
    t.text "genre"
    t.string "history"
    t.text "other"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nickname"], name: "index_infos_on_nickname", unique: true
  end

  create_table "means", force: :cascade do |t|
    t.string "nickname", null: false
    t.string "val1"
    t.string "val2"
    t.string "val3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nickname"], name: "index_means_on_nickname", unique: true
  end

  create_table "money", force: :cascade do |t|
    t.string "nickname", null: false
    t.string "val1"
    t.string "val2"
    t.string "val3"
    t.string "val4"
    t.string "val5"
    t.string "val6"
    t.string "val7"
    t.string "val8"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nickname"], name: "index_money_on_nickname", unique: true
  end

  create_table "packings", force: :cascade do |t|
    t.string "nickname", null: false
    t.string "val1"
    t.string "val2"
    t.string "val3"
    t.string "val4"
    t.string "val5"
    t.string "val6"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nickname"], name: "index_packings_on_nickname", unique: true
  end

  create_table "posts", force: :cascade do |t|
    t.string "sender", null: false
    t.string "receiver", null: false
    t.string "trading"
    t.string "method"
    t.string "contact"
    t.string "shipment"
    t.string "packing"
    t.string "money"
    t.text "other"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["receiver"], name: "index_posts_on_receiver"
    t.index ["sender"], name: "index_posts_on_sender"
  end

  create_table "scores", force: :cascade do |t|
    t.string "nickname"
    t.integer "score"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shipments", force: :cascade do |t|
    t.string "nickname", null: false
    t.string "val1"
    t.string "val2"
    t.string "val3"
    t.string "val4"
    t.string "val5"
    t.string "val6"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nickname"], name: "index_shipments_on_nickname", unique: true
  end

  create_table "tradings", force: :cascade do |t|
    t.string "nickname", null: false
    t.string "val1"
    t.string "val2"
    t.string "val3"
    t.string "val4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nickname"], name: "index_tradings_on_nickname", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "provider", null: false
    t.string "uid", null: false
    t.string "name", null: false
    t.string "image"
    t.datetime "remember_created_at"
    t.string "remember_token"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nickname"
    t.index ["image"], name: "index_users_on_image"
    t.index ["name"], name: "index_users_on_name"
    t.index ["provider", "uid"], name: "index_users_on_provider_and_uid", unique: true
  end

end
