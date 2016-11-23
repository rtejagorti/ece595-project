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

ActiveRecord::Schema.define(version: 20161123061503) do

  create_table "ballots", force: :cascade do |t|
    t.string   "election_year"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "candidates", force: :cascade do |t|
    t.string   "first_name",  limit: 45
    t.string   "last_name",   limit: 45
    t.boolean  "isEncumbent"
    t.string   "biography"
    t.integer  "precinct_id"
    t.integer  "ballot_id"
    t.string   "email",       limit: 45
    t.string   "pol_URL",     limit: 45
    t.string   "pol_aff",     limit: 45
    t.boolean  "hasPicture",  limit: 45
    t.string   "running_for", limit: 45
    t.string   "office_type", limit: 45
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["ballot_id"], name: "index_candidates_on_ballot_id"
    t.index ["precinct_id"], name: "index_candidates_on_precinct_id"
  end

  create_table "choices", force: :cascade do |t|
    t.string   "choice",      limit: 45
    t.integer  "question_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["question_id"], name: "index_choices_on_question_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string   "city_name",  limit: 45
    t.integer  "county_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["county_id"], name: "index_cities_on_county_id"
  end

  create_table "counties", force: :cascade do |t|
    t.string   "county_name", limit: 45
    t.integer  "state_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["state_id"], name: "index_counties_on_state_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string   "country_name", limit: 45
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "decisions", force: :cascade do |t|
    t.string   "decision_title",      limit: 45
    t.string   "decision_desc",       limit: 45
    t.string   "decision_position",   limit: 45
    t.string   "decision_source_url", limit: 45
    t.datetime "decision_date"
    t.integer  "judge_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["judge_id"], name: "index_decisions_on_judge_id"
  end

  create_table "divisions", force: :cascade do |t|
    t.string   "division_num",  limit: 45
    t.string   "division_type", limit: 45
    t.integer  "precinct_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["precinct_id"], name: "index_divisions_on_precinct_id"
  end

  create_table "judges", force: :cascade do |t|
    t.string   "judge_firstname", limit: 45
    t.string   "judge_lastname",  limit: 45
    t.boolean  "isSitting"
    t.string   "judge_biography"
    t.string   "judge_email",     limit: 45
    t.string   "judge_polaff",    limit: 45
    t.integer  "ballot_id"
    t.integer  "precinct_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["ballot_id"], name: "index_judges_on_ballot_id"
    t.index ["precinct_id"], name: "index_judges_on_precinct_id"
  end

  create_table "precincts", force: :cascade do |t|
    t.string   "precinct_num",  limit: 45
    t.string   "precinct_type", limit: 45
    t.integer  "city_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["city_id"], name: "index_precincts_on_city_id"
  end

  create_table "question_choices", force: :cascade do |t|
    t.integer  "choice_id"
    t.integer  "voter_id"
    t.integer  "candidate_id"
    t.integer  "question_id"
    t.string   "choice_source_url", limit: 45
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["candidate_id"], name: "index_question_choices_on_candidate_id"
    t.index ["choice_id"], name: "index_question_choices_on_choice_id"
    t.index ["question_id"], name: "index_question_choices_on_question_id"
    t.index ["voter_id"], name: "index_question_choices_on_voter_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string   "question",       limit: 45
    t.string   "question_desc",  limit: 45
    t.string   "question_topic", limit: 45
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "referendas", force: :cascade do |t|
    t.string   "referenda_title", limit: 45
    t.string   "referenda_desc"
    t.string   "referenda_type",  limit: 45
    t.integer  "ballot_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["ballot_id"], name: "index_referendas_on_ballot_id"
  end

  create_table "stances", force: :cascade do |t|
    t.string   "stance",            limit: 45
    t.string   "stance_source_url", limit: 45
    t.integer  "referenda_id"
    t.integer  "candidate_id"
    t.integer  "voter_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["candidate_id"], name: "index_stances_on_candidate_id"
    t.index ["referenda_id"], name: "index_stances_on_referenda_id"
    t.index ["voter_id"], name: "index_stances_on_voter_id"
  end

  create_table "states", force: :cascade do |t|
    t.string   "state_name", limit: 45
    t.integer  "country_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["country_id"], name: "index_states_on_country_id"
  end

  create_table "terms", force: :cascade do |t|
    t.string   "position_title", limit: 45
    t.datetime "termStart"
    t.datetime "termEnd"
    t.integer  "candidate_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["candidate_id"], name: "index_terms_on_candidate_id"
  end

  create_table "voters", force: :cascade do |t|
    t.integer  "session_id"
    t.integer  "zip_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["zip_id"], name: "index_voters_on_zip_id"
  end

  create_table "zips", force: :cascade do |t|
    t.string   "zip_code",    limit: 45
    t.integer  "precinct_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["precinct_id"], name: "index_zips_on_precinct_id"
  end

end
