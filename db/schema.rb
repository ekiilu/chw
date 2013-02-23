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

ActiveRecord::Schema.define(:version => 20120518033718) do

  create_table "cars", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "community_health_workers", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "middlename"
    t.string   "phonenumber"
    t.string   "nationalid"
    t.string   "gender"
    t.integer  "village"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "dotsmembers", :force => true do |t|
    t.date     "date_reported"
    t.string   "patient_number"
    t.string   "patient_phone"
    t.string   "status"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "hivcases", :force => true do |t|
    t.date     "date_diagnosed"
    t.string   "patient_number"
    t.string   "availability_of_contraceptives"
    t.string   "availability_of_drugs"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.integer  "location_id"
  end

  create_table "hivcontraceptionreports", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "hivdrugreports", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "hivgenderreports", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "hivlocationreports", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.string   "ward"
    t.string   "country"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "malariacases", :force => true do |t|
    t.integer  "patient_id"
    t.date     "date_diagnosed"
    t.integer  "communityworker_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "patient_number"
    t.integer  "location_id"
  end

  create_table "malariagenderreports", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "malarialocationreports", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "malariapreventationreports", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "messageparsers", :force => true do |t|
    t.string   "phonenumber"
    t.text     "text"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "messages", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "patients", :force => true do |t|
    t.string   "firstname"
    t.string   "middlename"
    t.string   "lastname"
    t.date     "year_of_birth"
    t.integer  "communityworker_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.date     "date_added"
    t.string   "patient_number"
  end

  create_table "sms", :force => true do |t|
    t.string   "phone"
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "smsmessages", :force => true do |t|
    t.string   "phone"
    t.text     "message"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tbcases", :force => true do |t|
    t.date     "date_reported"
    t.string   "patient_number"
    t.string   "availability_of_drugs"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.integer  "location_id"
  end

  create_table "tbdotreports", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tblocationreports", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "text_messages", :force => true do |t|
    t.string   "phone"
    t.text     "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "hashed_password"
    t.string   "salt"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "villages", :force => true do |t|
    t.string   "name"
    t.string   "ward"
    t.string   "county"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "villageworkers", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "middlename"
    t.string   "phonenumber"
    t.string   "nationalid"
    t.string   "male"
    t.integer  "village"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "location_id"
  end

end
