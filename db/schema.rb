heru# This file is auto-generated from the current state of the database. Instead
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

ActiveRecord::Schema.define(version: 20180501020857) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "capstones", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "student_id"
  end

  create_table "educations", force: :cascade do |t|
    t.string "start_date"
    t.string "end_date"
    t.string "degree"
    t.string "university_name"
    t.text "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "student_id"
  end

  create_table "experiences", force: :cascade do |t|
    t.string "start_date"
    t.string "end_date"
    t.string "job_title"
    t.string "company_name"
    t.text "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "student_id"
  end

  create_table "resume_data", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.text "education"
    t.text "experience"
    t.string "skills"
    t.string "capstone_link"
    t.string "capstone_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "student_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone_number"
    t.text "short_bio"
    t.string "linkedin_url"
    t.string "twitter_url"
    t.string "blog_url"
    t.string "resume_url"
    t.string "github_url"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
