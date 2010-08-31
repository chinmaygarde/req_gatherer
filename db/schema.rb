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

ActiveRecord::Schema.define(:version => 20100831151700) do

  create_table "auth_levels", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "priorities", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "requirements", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.text     "preconditions"
    t.text     "postconditions"
    t.text     "steps_to_use_case"
    t.text     "special_cases"
    t.text     "potential_issues"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "priority_id"
    t.integer  "auth_level_id"
    t.integer  "status_id"
  end

  create_table "statuses", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
