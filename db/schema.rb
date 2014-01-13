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

ActiveRecord::Schema.define(version: 20140112053311) do

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
  end

end
