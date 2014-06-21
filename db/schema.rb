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

ActiveRecord::Schema.define(version: 20140621075306) do

  create_table "assignments", force: true do |t|
    t.integer  "tab_id"
    t.integer  "customer_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "customer_office_id"
  end

  create_table "cities", force: true do |t|
    t.string   "name"
    t.integer  "zone_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customer_offices", force: true do |t|
    t.integer  "customer_id"
    t.text     "office_address"
    t.string   "office_city"
    t.string   "office_pincode"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status"
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
    t.string   "caf_number"
    t.string   "activation_code"
    t.string   "dist_code"
    t.string   "channel_string"
    t.string   "msisdn_number"
    t.string   "city_office"
    t.string   "office_pincode"
    t.string   "office_address"
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

  create_table "office_serveys", force: true do |t|
    t.integer  "customer_office_id"
    t.integer  "tab_id"
    t.integer  "user_id"
    t.string   "alternate_number"
    t.date     "date_of_birth"
    t.string   "bill_plan"
    t.string   "email"
    t.boolean  "billing_address_correction"
    t.text     "new_billing_address"
    t.boolean  "office_address_correction"
    t.text     "new_office_address"
    t.boolean  "applied_before"
    t.boolean  "sim_recieved"
    t.string   "sim_number"
    t.boolean  "postpaid_connection_first_time"
    t.boolean  "address_verified"
    t.string   "locality"
    t.string   "type_of_locality"
    t.string   "type_of_residence"
    t.string   "type_of_stay"
    t.string   "years_of_stay"
    t.string   "occupation"
    t.string   "type_of_work"
    t.string   "type_of_organisation"
    t.string   "documentation"
    t.string   "person_met"
    t.string   "name_person_met"
    t.string   "visit_number"
    t.string   "network"
    t.string   "av_result"
    t.string   "agency_name",                    default: "Scorp Enterprises"
    t.string   "team_leader_name"
    t.date     "date_of_visit"
    t.string   "remark_tab"
    t.string   "remark_team_leader"
    t.string   "billing_address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pincodes", force: true do |t|
    t.string   "name"
    t.string   "pin_number"
    t.string   "city"
    t.integer  "city_id"
    t.integer  "zone_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "serveys", force: true do |t|
    t.integer  "customer_id"
    t.integer  "tab_id"
    t.integer  "user_id"
    t.string   "alternate_number"
    t.date     "date_of_birth"
    t.string   "bill_plan"
    t.string   "email"
    t.boolean  "billing_address_correction"
    t.text     "new_billing_address"
    t.boolean  "office_address_correction"
    t.text     "new_office_address"
    t.boolean  "applied_before"
    t.boolean  "sim_recieved"
    t.string   "sim_number"
    t.boolean  "postpaid_connection_first_time"
    t.boolean  "address_verified"
    t.string   "locality"
    t.string   "type_of_locality"
    t.string   "type_of_residence"
    t.string   "type_of_stay"
    t.string   "years_of_stay"
    t.string   "occupation"
    t.string   "type_of_work"
    t.string   "type_of_organisation"
    t.string   "documentation"
    t.string   "person_met"
    t.string   "name_person_met"
    t.string   "visit_number"
    t.string   "network"
    t.string   "av_result"
    t.string   "agency_name",                    default: "Scorp Enterprises"
    t.string   "team_leader_name"
    t.date     "date_of_visit"
    t.string   "remark_tab"
    t.string   "remark_team_leader"
    t.string   "billing_address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "signature_image"
    t.string   "ease_of_location"
  end

  create_table "tabs", force: true do |t|
    t.string   "name"
    t.string   "tab_code"
    t.string   "pincode"
    t.string   "mac_address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "zone_id"
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

  create_table "zones", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
