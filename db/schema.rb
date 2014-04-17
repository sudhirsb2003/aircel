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

ActiveRecord::Schema.define(version: 20140416172311) do

  create_table "assignments", force: true do |t|
    t.integer  "tab_id"
    t.integer  "customer_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customer_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.string   "application_ref_number"
    t.string   "ageny_name"
    t.string   "applicant_name"
    t.text     "address"
    t.string   "landmark"
    t.date     "date_of_birth"
    t.string   "pincode"
    t.string   "contact_number"
    t.string   "status"
    t.string   "coountry"
    t.string   "state"
    t.string   "city"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "customer_type_id"
  end

  create_table "document_photos", force: true do |t|
    t.string   "servey_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "serveys", force: true do |t|
    t.integer  "customer_id"
    t.integer  "tab_id"
    t.integer  "user_id"
    t.string   "landmark"
    t.string   "ease_of_location"
    t.string   "telephone_number"
    t.string   "mobile_number"
    t.string   "person_contacted"
    t.string   "relationship_with_applicant"
    t.integer  "years_at_current_address"
    t.float    "expected_monthly_usage"
    t.string   "bill_payer"
    t.string   "bill_payer_occupation"
    t.string   "residence_type"
    t.string   "locality"
    t.string   "residence_status"
    t.string   "age"
    t.string   "customer_attitude"
    t.string   "credit_card"
    t.string   "pan_card"
    t.string   "pancard_number"
    t.string   "address_proof_sighted"
    t.string   "asset_seen"
    t.string   "vihicle_owned"
    t.string   "final_recomendation"
    t.string   "av_done_by"
    t.string   "av_supervisor_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "signature_image"
  end

  create_table "tabs", force: true do |t|
    t.string   "name"
    t.string   "tab_code"
    t.string   "pincode"
    t.string   "mac_address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "employee_uid"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.boolean  "admin",              default: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "role_name"
    t.integer  "tab_id"
    t.string   "username"
    t.datetime "logout_at"
  end

end
