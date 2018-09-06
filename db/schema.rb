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

ActiveRecord::Schema.define(version: 20180906181146) do

  create_table "data_feeds", force: :cascade do |t|
    t.string "etd_record_key"
    t.string "public_person_ID"
    t.string "directory_first_name"
    t.string "directory_middle_name"
    t.string "directory_last_name"
    t.string "email"
    t.string "home_address_1"
    t.string "home_address_2"
    t.string "home_address_3"
    t.string "home_address_city"
    t.string "home_address_state"
    t.string "home_address_postal_code"
    t.string "home_address_country_code"
    t.string "home_address_country_descr"
    t.string "ferpa_suppression_flag"
    t.string "acad_career_code"
    t.string "acad_career_descr"
    t.string "acad_program_code"
    t.string "acad_program_descr"
    t.string "primary_acad_plan_code"
    t.string "primary_acad_plan_descr"
    t.string "primary_acad_plan_dept_code"
    t.string "primary_acad_plan_dept_descr"
    t.string "secondary_acad_plan_code"
    t.string "secondary_acad_plan_descr"
    t.string "secondary_acad_plan_dept_code"
    t.string "secondary_acad_plan_dept_descr"
    t.string "program_status_descr"
    t.string "degree_code"
    t.string "degree_status_descr"
    t.date "degree_status_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
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

end
