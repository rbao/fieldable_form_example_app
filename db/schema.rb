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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130322002903) do

  create_table "fieldable_form_fields", :force => true do |t|
    t.string   "name"
    t.string   "type"
    t.text     "options"
    t.integer  "fieldable_id"
    t.string   "fieldable_type"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "fieldable_form_fields", ["fieldable_id"], :name => "index_fieldable_form_fields_on_fieldable_id"

  create_table "product_forms", :force => true do |t|
    t.integer  "product_type_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "product_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.integer  "product_type_id"
    t.text     "properties"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
