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

ActiveRecord::Schema.define(version: 20150710061947) do

  create_table "uploads", force: :cascade do |t|
    t.integer  "uploadable_id"
    t.string   "uploadable_type"
    t.string   "type"
    t.integer  "position"
    t.string   "data_file_name"
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "uploads", ["position"], name: "index_uploads_on_position"
  add_index "uploads", ["type"], name: "index_uploads_on_type"
  add_index "uploads", ["uploadable_id", "uploadable_type"], name: "index_uploads_on_uploadable_id_and_uploadable_type"

end
