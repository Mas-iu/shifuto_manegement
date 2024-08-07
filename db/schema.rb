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

ActiveRecord::Schema.define(version: 2024_07_05_051942) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "decision_attendances", force: :cascade do |t|
    t.datetime "employee_work_time_start"
    t.datetime "employee_work_time_end"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.integer "employee_requested_day_off"
    t.integer "employee_decision_day_off"
    t.boolean "approved", default: false
    t.index ["employee_work_time_end"], name: "index_decision_attendances_on_employee_work_time_end"
    t.index ["employee_work_time_start"], name: "index_decision_attendances_on_employee_work_time_start"
    t.index ["user_id"], name: "index_decision_attendances_on_user_id"
  end

  create_table "managers", force: :cascade do |t|
    t.integer "manager_id"
    t.text "manager_name"
    t.text "manager_name_kana"
    t.integer "pass_id"
    t.text "pass_word"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "possibility_attendances", force: :cascade do |t|
    t.datetime "employee_work_time_start"
    t.datetime "employee_work_time_end"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["employee_work_time_end"], name: "index_possibility_attendances_on_employee_work_time_end"
    t.index ["employee_work_time_start"], name: "index_possibility_attendances_on_employee_work_time_start"
    t.index ["user_id"], name: "index_possibility_attendances_on_user_id"
  end

  create_table "shifts", force: :cascade do |t|
    t.datetime "employee_work_time_start"
    t.datetime "employee_work_time_end"
    t.boolean "requested", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "employee_name"
    t.text "employee_name_kana"
    t.date "employee_requested_day_off"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "decision_attendances", "users"
  add_foreign_key "possibility_attendances", "users"
end
