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

ActiveRecord::Schema.define(version: 2019_02_15_103025) do

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts_phone_nos", id: false, force: :cascade do |t|
    t.integer "phone_no_id", null: false
    t.integer "contact_id", null: false
    t.string "phone_no"
    t.index ["contact_id", nil], name: "index_contacts_phone_nos_on_contact_id_and_phone_n_id"
    t.index [nil, "contact_id"], name: "index_contacts_phone_nos_on_phone_n_id_and_contact_id"
  end

  create_table "image_galleries_vehicles", id: false, force: :cascade do |t|
    t.integer "image_gallery_id", null: false
    t.integer "vehicle_id", null: false
    t.string "image_gallery"
    t.index ["vehicle_id", nil], name: "index_image_galleries_vehicles_on_vehicle_id_and_image_g_id"
    t.index [nil, "vehicle_id"], name: "index_image_galleries_vehicles_on_image_g_id_and_vehicle_id"
  end

  create_table "parent_categories_vehicles", id: false, force: :cascade do |t|
    t.integer "parent_category_id", null: false
    t.integer "vehicle_id", null: false
    t.string "parent_category"
    t.index ["vehicle_id", nil], name: "index_parent_categories_vehicles_on_vehicle_id_and_parent_c_id"
    t.index [nil, "vehicle_id"], name: "index_parent_categories_vehicles_on_parent_c_id_and_vehicle_id"
  end

  create_table "sub_categories_vehicles", id: false, force: :cascade do |t|
    t.integer "sub_category_id", null: false
    t.integer "vehicle_id", null: false
    t.string "sub_category"
    t.index ["vehicle_id", nil], name: "index_sub_categories_vehicles_on_vehicle_id_and_sub_c_id"
    t.index [nil, "vehicle_id"], name: "index_sub_categories_vehicles_on_sub_c_id_and_vehicle_id"
  end

  create_table "users", force: :cascade do |t|
    t.boolean "admin"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "name"
    t.string "color"
    t.string "company_name"
    t.string "vehicle_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
