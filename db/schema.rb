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

ActiveRecord::Schema.define(:version => 20130124123321) do

  create_table "characters", :force => true do |t|
    t.string   "name",                      :null => false
    t.boolean  "genre",                     :null => false
    t.integer  "level",      :default => 1
    t.integer  "hp"
    t.integer  "strength"
    t.integer  "resistance"
    t.integer  "skill"
    t.integer  "armor"
    t.integer  "fire_power"
    t.integer  "experience"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "squad_id"
  end

  add_index "characters", ["name"], :name => "index_characters_on_name"
  add_index "characters", ["squad_id"], :name => "index_characters_on_squad_id"

  create_table "squads", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "squads", ["name"], :name => "index_squads_on_name"

end
