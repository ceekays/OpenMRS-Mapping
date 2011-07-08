# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110706001746) do

  create_table "concept_maps", :force => true do |t|
    t.integer  "old_concept_id"
    t.integer  "new_concept_id"
    t.integer  "new_concept_retired"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "drug_maps", :force => true do |t|
    t.integer  "old_drug_id"
    t.integer  "old_drug_concept_id"
    t.string   "old_drug_name"
    t.integer  "new_drug_id"
    t.integer  "new_drug_concept_id"
    t.string   "new_drug_name"
    t.integer  "new_drug_retired"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "new_concept_names", :id => false, :force => true do |t|
    t.integer  "concept_id"
    t.string   "name",                          :default => "", :null => false
    t.string   "locale",          :limit => 50, :default => "", :null => false
    t.integer  "creator",                       :default => 0,  :null => false
    t.datetime "date_created",                                  :null => false
    t.integer  "concept_name_id",               :default => 0,  :null => false
    t.integer  "voided",          :limit => 2,  :default => 0,  :null => false
    t.integer  "voided_by"
    t.datetime "date_voided"
    t.string   "void_reason"
    t.string   "uuid",            :limit => 38,                 :null => false
  end

  create_table "new_concepts", :id => false, :force => true do |t|
    t.integer  "concept_id",                   :default => 0, :null => false
    t.integer  "retired",        :limit => 2,  :default => 0, :null => false
    t.string   "short_name"
    t.text     "description"
    t.text     "form_text"
    t.integer  "datatype_id",                  :default => 0, :null => false
    t.integer  "class_id",                     :default => 0, :null => false
    t.integer  "is_set",         :limit => 2,  :default => 0, :null => false
    t.integer  "creator",                      :default => 0, :null => false
    t.datetime "date_created",                                :null => false
    t.integer  "default_charge"
    t.string   "version",        :limit => 50
    t.integer  "changed_by"
    t.datetime "date_changed"
    t.integer  "retired_by"
    t.datetime "date_retired"
    t.string   "retire_reason"
    t.string   "uuid",           :limit => 38,                :null => false
  end

  create_table "new_drugs", :id => false, :force => true do |t|
    t.integer  "drug_id",                          :default => 0, :null => false
    t.integer  "concept_id",                       :default => 0, :null => false
    t.string   "name"
    t.integer  "combination",        :limit => 2,  :default => 0, :null => false
    t.integer  "dosage_form"
    t.float    "dose_strength"
    t.float    "maximum_daily_dose"
    t.float    "minimum_daily_dose"
    t.integer  "route"
    t.string   "units",              :limit => 50
    t.integer  "creator",                          :default => 0, :null => false
    t.datetime "date_created",                                    :null => false
    t.integer  "retired",            :limit => 2,  :default => 0, :null => false
    t.integer  "retired_by"
    t.datetime "date_retired"
    t.string   "retire_reason"
    t.string   "uuid",               :limit => 38,                :null => false
  end

  create_table "old_concept_names", :id => false, :force => true do |t|
    t.integer  "concept_id",                 :default => 0,  :null => false
    t.string   "name",                       :default => "", :null => false
    t.string   "short_name"
    t.text     "description",                                :null => false
    t.string   "locale",       :limit => 50, :default => "", :null => false
    t.integer  "creator",                    :default => 0,  :null => false
    t.datetime "date_created",                               :null => false
  end

  create_table "old_concepts", :primary_key => "concept_id", :force => true do |t|
    t.boolean  "retired",                      :default => false, :null => false
    t.string   "name",                         :default => "",    :null => false
    t.string   "short_name"
    t.text     "description"
    t.text     "form_text"
    t.integer  "datatype_id",                  :default => 0,     :null => false
    t.integer  "class_id",                     :default => 0,     :null => false
    t.boolean  "is_set",                       :default => false, :null => false
    t.string   "icd10"
    t.string   "loinc"
    t.integer  "creator",                      :default => 0,     :null => false
    t.datetime "date_created",                                    :null => false
    t.integer  "default_charge"
    t.string   "version",        :limit => 50
    t.integer  "changed_by"
    t.datetime "date_changed"
    t.string   "form_location",  :limit => 50
    t.string   "units",          :limit => 50
    t.integer  "view_count"
  end

  create_table "old_drugs", :id => false, :force => true do |t|
    t.integer  "drug_id",                               :default => 0,     :null => false
    t.integer  "concept_id",                            :default => 0,     :null => false
    t.string   "name",            :limit => 50
    t.boolean  "combination",                           :default => false, :null => false
    t.float    "daily_mg_per_kg"
    t.string   "dosage_form"
    t.float    "dose_strength"
    t.text     "inn",             :limit => 2147483647
    t.float    "maximum_dose"
    t.float    "minimum_dose"
    t.string   "route"
    t.integer  "shelf_life"
    t.integer  "therapy_class"
    t.string   "units",           :limit => 50
    t.integer  "creator",                               :default => 0,     :null => false
    t.datetime "date_created",                                             :null => false
  end

end
