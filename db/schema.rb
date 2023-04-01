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

ActiveRecord::Schema[7.0].define(version: 2023_03_31_233647) do
  create_table "clients", force: :cascade do |t|
    t.string "fullName"
    t.string "email"
    t.string "phone"
    t.integer "age"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "loanAmount"
    t.string "businessHistory"
    t.string "businessLocation"
    t.integer "user_id"
  end

  create_table "data", force: :cascade do |t|
    t.string "fullName"
    t.string "email"
    t.string "phone"
    t.string "businessHistory"
    t.string "businessLocation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "loans", force: :cascade do |t|
    t.string "fullName"
    t.integer "loanAmount"
    t.float "interestRate"
    t.integer "loanTenure"
    t.string "loanStatus"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "loanDisbursed", default: "N/A"
    t.integer "client_id"
  end

  create_table "payments", force: :cascade do |t|
    t.decimal "amount"
    t.string "payment_means"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "fullName"
  end

  create_table "users", force: :cascade do |t|
    t.string "fullname"
    t.string "email"
    t.string "password_digest"
    t.string "userType"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
