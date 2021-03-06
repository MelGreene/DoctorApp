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

ActiveRecord::Schema.define(version: 20160425191001) do

  create_table "children", force: :cascade do |t|
    t.text     "CLastName"
    t.text     "CFirstName"
    t.text     "Age"
    t.date     "Date"
    t.text     "Notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parents", force: :cascade do |t|
    t.integer  "ParentID"
    t.text     "PLastName"
    t.text     "PFirstName"
    t.text     "Email"
    t.integer  "Phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "child_id"
  end

  add_index "parents", ["child_id"], name: "index_parents_on_child_id"

  create_table "vitals", force: :cascade do |t|
    t.decimal  "Height"
    t.decimal  "Weight"
    t.decimal  "HeadCircumference"
    t.date     "Date"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "child_id"
  end

  add_index "vitals", ["child_id"], name: "index_vitals_on_child_id"

end
