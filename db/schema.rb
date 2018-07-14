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

ActiveRecord::Schema.define(version: 20180707051002) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string "customer_fname"
    t.string "customer_lname"
    t.string "customer_email"
    t.string "customer_phone"
    t.bit "customer_call", limit: 1
    t.bit "customer_text", limit: 1
    t.string "customer_zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "device_component_statuses", force: :cascade do |t|
    t.string "device_comp_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "device_components", force: :cascade do |t|
    t.bigint "device_version_id"
    t.string "device_comp_name"
    t.string "device_comp_color"
    t.string "device_comp_description"
    t.bigint "device_component_status_id"
    t.decimal "device_comp_cost", precision: 18, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["device_component_status_id"], name: "index_device_components_on_device_component_status_id"
    t.index ["device_version_id"], name: "index_device_components_on_device_version_id"
  end

  create_table "device_manufacturers", force: :cascade do |t|
    t.string "device_manu_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "device_post_tests", force: :cascade do |t|
    t.date "device_post_test_date"
    t.bigint "repair_order_id"
    t.bigint "test_id"
    t.string "post_test_condition"
    t.string "post_test_notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["repair_order_id"], name: "index_device_post_tests_on_repair_order_id"
    t.index ["test_id"], name: "index_device_post_tests_on_test_id"
  end

  create_table "device_pre_tests", force: :cascade do |t|
    t.date "device_pre_test_date"
    t.bigint "repair_order_id"
    t.bigint "test_id"
    t.string "pre_test_condition"
    t.string "pre_test_notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["repair_order_id"], name: "index_device_pre_tests_on_repair_order_id"
    t.index ["test_id"], name: "index_device_pre_tests_on_test_id"
  end

  create_table "device_repair_orders", force: :cascade do |t|
    t.bigint "device_id"
    t.bigint "repair_order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["device_id"], name: "index_device_repair_orders_on_device_id"
    t.index ["repair_order_id"], name: "index_device_repair_orders_on_repair_order_id"
  end

  create_table "device_versions", force: :cascade do |t|
    t.string "device_version_name"
    t.bigint "device_manufacturer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["device_manufacturer_id"], name: "index_device_versions_on_device_manufacturer_id"
  end

  create_table "devices", force: :cascade do |t|
    t.integer "imei_number"
    t.string "device_type"
    t.string "device_color"
    t.string "device_notes"
    t.bigint "customer_id"
    t.bigint "device_version_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_devices_on_customer_id"
    t.index ["device_version_id"], name: "index_devices_on_device_version_id"
  end

  create_table "repair_order_items", force: :cascade do |t|
    t.bigint "repair_order_id"
    t.bigint "device_component_id"
    t.bigint "technician_id"
    t.date "warranty_expire_date"
    t.string "warranty_coverage_notes"
    t.bit "repaired_as_warranty", limit: 1
    t.date "warranty_repair_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["device_component_id"], name: "index_repair_order_items_on_device_component_id"
    t.index ["repair_order_id"], name: "index_repair_order_items_on_repair_order_id"
    t.index ["technician_id"], name: "index_repair_order_items_on_technician_id"
  end

  create_table "repair_order_statuses", force: :cascade do |t|
    t.string "repair_order_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "repair_orders", force: :cascade do |t|
    t.date "repair_order_date"
    t.decimal "repair_order_subtotal", precision: 18, scale: 2
    t.decimal "repair_order_tax", precision: 18, scale: 2
    t.decimal "repair_order_total", precision: 18, scale: 2
    t.string "repair_order_accessories"
    t.string "repair_order_notes"
    t.bigint "repair_order_status_id"
    t.date "repair_order_status_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["repair_order_status_id"], name: "index_repair_orders_on_repair_order_status_id"
  end

  create_table "technician_statuses", force: :cascade do |t|
    t.string "tech_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "technicians", force: :cascade do |t|
    t.string "tech_name"
    t.bigint "technician_status_id"
    t.string "tech_expertise_notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["technician_status_id"], name: "index_technicians_on_technician_status_id"
  end

  create_table "tests", force: :cascade do |t|
    t.string "test_name"
    t.string "test_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "device_components", "device_component_statuses"
  add_foreign_key "device_components", "device_versions"
  add_foreign_key "device_post_tests", "repair_orders"
  add_foreign_key "device_post_tests", "tests"
  add_foreign_key "device_pre_tests", "repair_orders"
  add_foreign_key "device_pre_tests", "tests"
  add_foreign_key "device_repair_orders", "devices"
  add_foreign_key "device_repair_orders", "repair_orders"
  add_foreign_key "device_versions", "device_manufacturers"
  add_foreign_key "devices", "customers"
  add_foreign_key "devices", "device_versions"
  add_foreign_key "repair_order_items", "device_components"
  add_foreign_key "repair_order_items", "repair_orders"
  add_foreign_key "repair_order_items", "technicians"
  add_foreign_key "repair_orders", "repair_order_statuses"
  add_foreign_key "technicians", "technician_statuses"
end
