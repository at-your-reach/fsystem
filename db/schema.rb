# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_11_012332) do

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "other_name"
    t.string "string"
    t.date "birth_date"
    t.integer "age"
    t.string "gender"
    t.string "marital_status"
    t.string "nationality"
    t.string "beneficiary"
    t.string "mobile_number"
    t.string "house_number"
    t.string "landmark_location"
    t.string "street_name"
    t.string "region"
    t.string "district"
    t.string "town"
    t.string "occupation"
    t.string "id_type"
    t.string "id_number"
    t.string "spouse_name"
    t.integer "number_of_children"
    t.string "email"
    t.date "date_account_opened"
    t.integer "accounts_opened"
    t.string "picture"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "officers", force: :cascade do |t|
    t.string "name"
    t.date "birth_date"
    t.string "gender"
    t.string "marital_status"
    t.string "nationality"
    t.string "mobile_number"
    t.string "address"
    t.string "email"
    t.string "education"
    t.integer "customer_amount"
    t.integer "children_amount"
    t.integer "age"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
