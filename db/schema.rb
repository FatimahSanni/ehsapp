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

ActiveRecord::Schema.define(version: 20150801085025) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admissions", force: :cascade do |t|
    t.integer  "patient_id"
    t.date     "date"
    t.integer  "service_id"
    t.integer  "room_master_id"
    t.integer  "anaesthesia_id"
    t.string   "eye"
    t.integer  "lens_type_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "room_id"
  end

  add_index "admissions", ["anaesthesia_id"], name: "index_admissions_on_anaesthesia_id", using: :btree
  add_index "admissions", ["lens_type_id"], name: "index_admissions_on_lens_type_id", using: :btree
  add_index "admissions", ["patient_id"], name: "index_admissions_on_patient_id", using: :btree
  add_index "admissions", ["room_id"], name: "index_admissions_on_room_id", using: :btree
  add_index "admissions", ["room_master_id"], name: "index_admissions_on_room_master_id", using: :btree
  add_index "admissions", ["service_id"], name: "index_admissions_on_service_id", using: :btree

  create_table "anaesthesia", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "appointments", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "time_slot_id"
    t.integer  "consultant_id"
    t.text     "remark"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.date     "appointment_date"
  end

  add_index "appointments", ["consultant_id"], name: "index_appointments_on_consultant_id", using: :btree
  add_index "appointments", ["patient_id"], name: "index_appointments_on_patient_id", using: :btree
  add_index "appointments", ["time_slot_id"], name: "index_appointments_on_time_slot_id", using: :btree

  create_table "clinics", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "consultant_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "consultants", force: :cascade do |t|
    t.string   "name"
    t.integer  "consultant_category_id"
    t.integer  "clinic_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "consultants", ["clinic_id"], name: "index_consultants_on_clinic_id", using: :btree
  add_index "consultants", ["consultant_category_id"], name: "index_consultants_on_consultant_category_id", using: :btree

  create_table "counselling_records", force: :cascade do |t|
    t.integer  "counsellor_id"
    t.integer  "patient_id"
    t.integer  "consultant_id"
    t.integer  "service_id"
    t.text     "note"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "counselling_records", ["consultant_id"], name: "index_counselling_records_on_consultant_id", using: :btree
  add_index "counselling_records", ["counsellor_id"], name: "index_counselling_records_on_counsellor_id", using: :btree
  add_index "counselling_records", ["patient_id"], name: "index_counselling_records_on_patient_id", using: :btree
  add_index "counselling_records", ["service_id"], name: "index_counselling_records_on_service_id", using: :btree

  create_table "counsellors", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "discharges", force: :cascade do |t|
    t.integer  "patient_id"
    t.text     "note"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "admission_id"
  end

  add_index "discharges", ["admission_id"], name: "index_discharges_on_admission_id", using: :btree
  add_index "discharges", ["patient_id"], name: "index_discharges_on_patient_id", using: :btree

  create_table "file_records", force: :cascade do |t|
    t.integer  "patient_id"
    t.string   "borrower"
    t.text     "reason"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "file_records", ["patient_id"], name: "index_file_records_on_patient_id", using: :btree

  create_table "invoices", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "consultant_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "invoices", ["consultant_id"], name: "index_invoices_on_consultant_id", using: :btree
  add_index "invoices", ["patient_id"], name: "index_invoices_on_patient_id", using: :btree

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.float    "amount"
    t.integer  "invoice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "items", ["invoice_id"], name: "index_items_on_invoice_id", using: :btree

  create_table "lab_records", force: :cascade do |t|
    t.integer  "patient_id"
    t.string   "provisional_diagnosis"
    t.string   "clinical_details"
    t.string   "pcv"
    t.string   "hba1c"
    t.string   "hbsag"
    t.string   "esr"
    t.string   "fbs"
    t.string   "rbs"
    t.string   "serology"
    t.string   "appearance"
    t.string   "blood"
    t.string   "ph"
    t.string   "colour"
    t.string   "sg"
    t.text     "others"
    t.text     "comment"
    t.integer  "consultant_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "lab_records", ["consultant_id"], name: "index_lab_records_on_consultant_id", using: :btree
  add_index "lab_records", ["patient_id"], name: "index_lab_records_on_patient_id", using: :btree

  create_table "lens_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lgas", force: :cascade do |t|
    t.string   "name"
    t.integer  "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "lgas", ["state_id"], name: "index_lgas_on_state_id", using: :btree

  create_table "mirror_optical_stocks", force: :cascade do |t|
    t.string   "amount"
    t.integer  "optical_stock_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "mirror_optical_stocks", ["optical_stock_id"], name: "index_mirror_optical_stocks_on_optical_stock_id", using: :btree

  create_table "mirror_pharmacy_stocks", force: :cascade do |t|
    t.string   "amount"
    t.integer  "pharmacy_stock_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "mirror_pharmacy_stocks", ["pharmacy_stock_id"], name: "index_mirror_pharmacy_stocks_on_pharmacy_stock_id", using: :btree

  create_table "mirror_services", force: :cascade do |t|
    t.float    "amount"
    t.integer  "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "mirror_services", ["service_id"], name: "index_mirror_services_on_service_id", using: :btree

  create_table "nationalities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "occupations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ophthalmologist_records", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "consultant_id"
    t.string   "prediagnosis"
    t.string   "re"
    t.string   "le"
    t.string   "s_re"
    t.string   "s_le"
    t.string   "c_re"
    t.string   "c_le"
    t.string   "refraction"
    t.text     "complaint"
    t.string   "duration"
    t.text     "history"
    t.string   "previous_problems"
    t.text     "general_medical_history"
    t.string   "medications"
    t.text     "family_history"
    t.string   "social_history"
    t.string   "bp"
    t.string   "urine"
    t.boolean  "diabetes"
    t.boolean  "hypertension"
    t.boolean  "cardiac"
    t.boolean  "asthma"
    t.string   "others"
    t.string   "allergy"
    t.boolean  "smoking"
    t.string   "facial_re"
    t.string   "facial_le"
    t.string   "pupil_re"
    t.string   "pupil_le"
    t.string   "ocular_re"
    t.string   "ocular_le"
    t.string   "investigations"
    t.text     "diagnosis"
    t.text     "treatment"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "ophthalmologist_records", ["consultant_id"], name: "index_ophthalmologist_records_on_consultant_id", using: :btree
  add_index "ophthalmologist_records", ["patient_id"], name: "index_ophthalmologist_records_on_patient_id", using: :btree

  create_table "optical_invoices", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "optometrist_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "optical_invoices", ["optometrist_id"], name: "index_optical_invoices_on_optometrist_id", using: :btree
  add_index "optical_invoices", ["patient_id"], name: "index_optical_invoices_on_patient_id", using: :btree

  create_table "optical_items", force: :cascade do |t|
    t.string   "name"
    t.float    "amount"
    t.integer  "optical_invoice_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "optical_items", ["optical_invoice_id"], name: "index_optical_items_on_optical_invoice_id", using: :btree

  create_table "optical_prescriptions", force: :cascade do |t|
    t.integer  "patient_id"
    t.string   "sph_re"
    t.string   "sph_le"
    t.string   "cyl_re"
    t.string   "cyl_le"
    t.string   "axis_re"
    t.string   "axis_le"
    t.string   "prism_re"
    t.string   "prism_le"
    t.string   "add_re"
    t.string   "add_le"
    t.string   "lens_type"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "optometrist_id"
  end

  add_index "optical_prescriptions", ["optometrist_id"], name: "index_optical_prescriptions_on_optometrist_id", using: :btree
  add_index "optical_prescriptions", ["patient_id"], name: "index_optical_prescriptions_on_patient_id", using: :btree

  create_table "optical_stocks", force: :cascade do |t|
    t.string   "name"
    t.float    "amount"
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "optometrist_records", force: :cascade do |t|
    t.integer  "patient_id"
    t.string   "optometrist"
    t.integer  "consultant_id"
    t.string   "va_re"
    t.string   "va_le"
    t.string   "sc_re"
    t.string   "sc_le"
    t.string   "cc_re"
    t.string   "cc_le"
    t.text     "diagnosis"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "optometrist_records", ["consultant_id"], name: "index_optometrist_records_on_consultant_id", using: :btree
  add_index "optometrist_records", ["patient_id"], name: "index_optometrist_records_on_patient_id", using: :btree

  create_table "optometrists", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "packages", force: :cascade do |t|
    t.string   "name"
    t.float    "registration_fee"
    t.float    "fup_fee"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "surname"
    t.date     "dob"
    t.string   "gender"
    t.string   "address"
    t.string   "phone"
    t.string   "email"
    t.integer  "occupation_id"
    t.integer  "nationality_id"
    t.integer  "religion_id"
    t.string   "next_of_kin"
    t.string   "next_of_kin_phone"
    t.string   "next_of_kin_address"
    t.boolean  "referred"
    t.integer  "referrer_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "consultant_id"
    t.integer  "state_id"
    t.integer  "lga_id"
    t.integer  "package_id"
    t.string   "mrn"
  end

  add_index "patients", ["consultant_id"], name: "index_patients_on_consultant_id", using: :btree
  add_index "patients", ["lga_id"], name: "index_patients_on_lga_id", using: :btree
  add_index "patients", ["nationality_id"], name: "index_patients_on_nationality_id", using: :btree
  add_index "patients", ["occupation_id"], name: "index_patients_on_occupation_id", using: :btree
  add_index "patients", ["package_id"], name: "index_patients_on_package_id", using: :btree
  add_index "patients", ["referrer_id"], name: "index_patients_on_referrer_id", using: :btree
  add_index "patients", ["religion_id"], name: "index_patients_on_religion_id", using: :btree
  add_index "patients", ["state_id"], name: "index_patients_on_state_id", using: :btree

  create_table "pharmacy_invoices", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "consultant_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "pharmacy_invoices", ["consultant_id"], name: "index_pharmacy_invoices_on_consultant_id", using: :btree
  add_index "pharmacy_invoices", ["patient_id"], name: "index_pharmacy_invoices_on_patient_id", using: :btree

  create_table "pharmacy_items", force: :cascade do |t|
    t.string   "name"
    t.float    "amount"
    t.integer  "pharmacy_invoice_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "pharmacy_items", ["pharmacy_invoice_id"], name: "index_pharmacy_items_on_pharmacy_invoice_id", using: :btree

  create_table "pharmacy_stocks", force: :cascade do |t|
    t.string   "name"
    t.float    "amount"
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "procedure_records", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "consultant_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "procedure_records", ["consultant_id"], name: "index_procedure_records_on_consultant_id", using: :btree
  add_index "procedure_records", ["patient_id"], name: "index_procedure_records_on_patient_id", using: :btree

  create_table "procedures", force: :cascade do |t|
    t.integer  "service_id"
    t.integer  "procedure_record_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "procedures", ["procedure_record_id"], name: "index_procedures_on_procedure_record_id", using: :btree
  add_index "procedures", ["service_id"], name: "index_procedures_on_service_id", using: :btree

  create_table "referrers", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "religions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reserve_funds", force: :cascade do |t|
    t.integer  "patient_id"
    t.float    "amount"
    t.text     "remark"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reserve_funds", ["patient_id"], name: "index_reserve_funds_on_patient_id", using: :btree

  create_table "room_masters", force: :cascade do |t|
    t.string   "name"
    t.integer  "amount"
    t.string   "prefix"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string   "name"
    t.boolean  "vacant",     default: true, null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "service_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "name"
    t.float    "amount"
    t.integer  "service_category_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "services", ["service_category_id"], name: "index_services_on_service_category_id", using: :btree

  create_table "states", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subdomains", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "surgery_schedules", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "consultant_id"
    t.string   "iol_power"
    t.string   "iol_type"
    t.integer  "anaesthesia_id"
    t.integer  "service_id"
    t.string   "eye"
    t.text     "remark"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "surgery_schedules", ["anaesthesia_id"], name: "index_surgery_schedules_on_anaesthesia_id", using: :btree
  add_index "surgery_schedules", ["consultant_id"], name: "index_surgery_schedules_on_consultant_id", using: :btree
  add_index "surgery_schedules", ["patient_id"], name: "index_surgery_schedules_on_patient_id", using: :btree
  add_index "surgery_schedules", ["service_id"], name: "index_surgery_schedules_on_service_id", using: :btree

  create_table "time_slots", force: :cascade do |t|
    t.time     "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.integer  "role_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "visual_acuities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "admissions", "anaesthesia"
  add_foreign_key "admissions", "lens_types"
  add_foreign_key "admissions", "patients"
  add_foreign_key "admissions", "room_masters"
  add_foreign_key "admissions", "rooms"
  add_foreign_key "admissions", "services"
  add_foreign_key "appointments", "consultants"
  add_foreign_key "appointments", "patients"
  add_foreign_key "appointments", "time_slots"
  add_foreign_key "consultants", "clinics"
  add_foreign_key "consultants", "consultant_categories"
  add_foreign_key "counselling_records", "consultants"
  add_foreign_key "counselling_records", "counsellors"
  add_foreign_key "counselling_records", "patients"
  add_foreign_key "counselling_records", "services"
  add_foreign_key "discharges", "admissions"
  add_foreign_key "discharges", "patients"
  add_foreign_key "file_records", "patients"
  add_foreign_key "invoices", "consultants"
  add_foreign_key "invoices", "patients"
  add_foreign_key "items", "invoices"
  add_foreign_key "lab_records", "consultants"
  add_foreign_key "lab_records", "patients"
  add_foreign_key "lgas", "states"
  add_foreign_key "mirror_optical_stocks", "optical_stocks"
  add_foreign_key "mirror_pharmacy_stocks", "pharmacy_stocks"
  add_foreign_key "mirror_services", "services"
  add_foreign_key "ophthalmologist_records", "consultants"
  add_foreign_key "ophthalmologist_records", "patients"
  add_foreign_key "optical_invoices", "optometrists"
  add_foreign_key "optical_invoices", "patients"
  add_foreign_key "optical_items", "optical_invoices"
  add_foreign_key "optical_prescriptions", "optometrists"
  add_foreign_key "optical_prescriptions", "patients"
  add_foreign_key "optometrist_records", "consultants"
  add_foreign_key "optometrist_records", "patients"
  add_foreign_key "patients", "consultants"
  add_foreign_key "patients", "lgas"
  add_foreign_key "patients", "nationalities"
  add_foreign_key "patients", "occupations"
  add_foreign_key "patients", "packages"
  add_foreign_key "patients", "referrers"
  add_foreign_key "patients", "religions"
  add_foreign_key "patients", "states"
  add_foreign_key "pharmacy_invoices", "consultants"
  add_foreign_key "pharmacy_invoices", "patients"
  add_foreign_key "pharmacy_items", "pharmacy_invoices"
  add_foreign_key "procedure_records", "consultants"
  add_foreign_key "procedure_records", "patients"
  add_foreign_key "procedures", "procedure_records"
  add_foreign_key "procedures", "services"
  add_foreign_key "reserve_funds", "patients"
  add_foreign_key "services", "service_categories"
  add_foreign_key "surgery_schedules", "anaesthesia"
  add_foreign_key "surgery_schedules", "consultants"
  add_foreign_key "surgery_schedules", "patients"
  add_foreign_key "surgery_schedules", "services"
end
