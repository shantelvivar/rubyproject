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

ActiveRecord::Schema.define(version: 2019_10_30_060952) do

  create_table "assignments", force: :cascade do |t|
    t.string "assignname"
    t.datetime "duedate"
    t.integer "professor_id", null: false
    t.integer "section_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["professor_id"], name: "index_assignments_on_professor_id"
    t.index ["section_id"], name: "index_assignments_on_section_id"
  end

  create_table "offices", force: :cascade do |t|
    t.integer "roomnumber"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "professors", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.integer "office_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["office_id"], name: "index_professors_on_office_id"
  end

  create_table "sections", force: :cascade do |t|
    t.string "sectionname"
    t.datetime "sectiontime"
    t.string "sectionlocation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "assignments", "professors"
  add_foreign_key "assignments", "sections"
  add_foreign_key "professors", "offices"
end
