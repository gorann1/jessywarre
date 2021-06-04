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

ActiveRecord::Schema.define(version: 2021_06_04_075029) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "assignments", force: :cascade do |t|
    t.bigint "location_id", null: false
    t.bigint "center_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["center_id"], name: "index_assignments_on_center_id"
    t.index ["location_id"], name: "index_assignments_on_location_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.text "desc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "centers", force: :cascade do |t|
    t.bigint "zone_id", null: false
    t.bigint "country_id", null: false
    t.bigint "region_id", null: false
    t.string "name"
    t.string "address"
    t.string "add_address"
    t.string "city"
    t.string "contact"
    t.string "phone"
    t.string "add_phone"
    t.integer "postalcode"
    t.string "mobile"
    t.string "add_mobile"
    t.string "email"
    t.string "add_email"
    t.string "web"
    t.string "add_web"
    t.text "desc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_centers_on_country_id"
    t.index ["region_id"], name: "index_centers_on_region_id"
    t.index ["zone_id"], name: "index_centers_on_zone_id"
  end

  create_table "comments", force: :cascade do |t|
    t.string "commenter"
    t.text "body"
    t.bigint "article_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["article_id"], name: "index_comments_on_article_id"
  end

  create_table "countries", force: :cascade do |t|
    t.bigint "zone_id", null: false
    t.string "name"
    t.string "nicename"
    t.string "iso"
    t.string "iso3"
    t.string "phonecode"
    t.text "desc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["zone_id"], name: "index_countries_on_zone_id"
  end

  create_table "locations", force: :cascade do |t|
    t.bigint "zone_id", null: false
    t.bigint "country_id", null: false
    t.bigint "region_id", null: false
    t.bigint "category_id", null: false
    t.bigint "type_id", null: false
    t.string "name"
    t.decimal "lat"
    t.decimal "lng"
    t.integer "mindepth"
    t.integer "maxdepth"
    t.string "visibility"
    t.string "currents"
    t.boolean "is_spec"
    t.text "desc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "gps"
    t.index ["category_id"], name: "index_locations_on_category_id"
    t.index ["country_id"], name: "index_locations_on_country_id"
    t.index ["region_id"], name: "index_locations_on_region_id"
    t.index ["type_id"], name: "index_locations_on_type_id"
    t.index ["zone_id"], name: "index_locations_on_zone_id"
  end

  create_table "regions", force: :cascade do |t|
    t.bigint "zone_id", null: false
    t.bigint "country_id", null: false
    t.string "name"
    t.text "desc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_regions_on_country_id"
    t.index ["zone_id"], name: "index_regions_on_zone_id"
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.text "desc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.boolean "superadmin", default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "zones", force: :cascade do |t|
    t.string "name"
    t.text "desc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "assignments", "centers"
  add_foreign_key "assignments", "locations"
  add_foreign_key "centers", "countries"
  add_foreign_key "centers", "regions"
  add_foreign_key "centers", "zones"
  add_foreign_key "comments", "articles"
  add_foreign_key "countries", "zones"
  add_foreign_key "locations", "categories"
  add_foreign_key "locations", "countries"
  add_foreign_key "locations", "regions"
  add_foreign_key "locations", "types"
  add_foreign_key "locations", "zones"
  add_foreign_key "regions", "countries"
  add_foreign_key "regions", "zones"
end
