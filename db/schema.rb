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

ActiveRecord::Schema.define(version: 2019_04_13_003750) do

  create_table "appliances", force: :cascade do |t|
    t.string "Appliance_name"
    t.integer "Appliance_watt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assets", force: :cascade do |t|
    t.string "assetname"
    t.string "assettype"
    t.string "workingcondition"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_assets_on_user_id"
  end

  create_table "assignments", force: :cascade do |t|
    t.integer "color_id"
    t.integer "product_id"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["color_id"], name: "index_assignments_on_color_id"
    t.index ["product_id"], name: "index_assignments_on_product_id"
  end

  create_table "cals", force: :cascade do |t|
    t.string "name"
    t.decimal "rent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colors", force: :cascade do |t|
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "quantity"
  end

  create_table "complains", force: :cascade do |t|
    t.string "description"
    t.datetime "appointment"
    t.string "providername"
    t.string "mailid"
    t.string "attachment"
    t.integer "user_id"
    t.integer "asset_id"
    t.integer "serviceprovider_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["asset_id"], name: "index_complains_on_asset_id"
    t.index ["serviceprovider_id"], name: "index_complains_on_serviceprovider_id"
    t.index ["user_id"], name: "index_complains_on_user_id"
  end

  create_table "currentproviders", force: :cascade do |t|
    t.string "providername"
    t.decimal "cost"
    t.decimal "standingcharge"
    t.decimal "pslvcharge"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.decimal "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.integer "quantity"
    t.integer "product_id"
    t.integer "order_id"
    t.decimal "total"
    t.decimal "unit_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.decimal "subtotal"
    t.decimal "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "polls", force: :cascade do |t|
    t.text "topic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "title"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.integer "door_no"
    t.string "spouse_name"
    t.integer "Number_of_Cars"
    t.boolean "Intrested_in_events"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "rents", force: :cascade do |t|
    t.decimal "grossrent"
    t.decimal "mortage_interest"
    t.string "mortage_interest_allowed"
    t.decimal "repairs"
    t.decimal "insurance"
    t.decimal "management_charges"
    t.decimal "agent_fee"
    t.decimal "other"
    t.decimal "total_expenses"
    t.decimal "rental_profit_or_loss"
    t.decimal "wear_and_tear"
    t.decimal "net_profit_or_loss"
    t.decimal "income_tac"
    t.decimal "prsi"
    t.decimal "usc"
    t.decimal "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "serviceproviders", force: :cascade do |t|
    t.string "providername"
    t.string "providerservice"
    t.string "mailid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "servicename"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "userinterests", force: :cascade do |t|
    t.string "isinterest"
    t.integer "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_userinterests_on_event_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.string "provider"
    t.string "uid"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vote_values", force: :cascade do |t|
    t.string "title"
    t.integer "poll_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["poll_id"], name: "index_vote_values_on_poll_id"
  end

  create_table "votes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "vote_value_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_votes_on_user_id"
    t.index ["vote_value_id", "user_id"], name: "index_votes_on_vote_value_id_and_user_id", unique: true
    t.index ["vote_value_id"], name: "index_votes_on_vote_value_id"
  end

end
