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

ActiveRecord::Schema.define(version: 20160229030034) do

  create_table "articles", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "post",       limit: 65535
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "collections", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.integer  "ownerid",     limit: 4
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string   "commenter",  limit: 255
    t.text     "body",       limit: 65535
    t.integer  "article_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "comments", ["article_id"], name: "index_comments_on_article_id", using: :btree

  create_table "subcomponents", force: :cascade do |t|
    t.string   "behaviour",   limit: 255
    t.string   "refid",       limit: 255
    t.integer  "ownerid",     limit: 4
    t.string   "editorid",    limit: 255
    t.string   "followerid",  limit: 255
    t.integer  "views",       limit: 4
    t.boolean  "viewable"
    t.boolean  "active"
    t.string   "title",       limit: 255
    t.text     "subs",        limit: 65535
    t.text     "description", limit: 65535
    t.string   "titleimage",  limit: 255
    t.text     "meat",        limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",        limit: 255
    t.string   "email",           limit: 255
    t.string   "password",        limit: 255
    t.string   "salt",            limit: 255
    t.string   "refid",           limit: 255
    t.integer  "active",          limit: 4
    t.string   "follows",         limit: 255
    t.string   "text",            limit: 255
    t.string   "tagline",         limit: 255
    t.text     "status",          limit: 65535
    t.string   "userimage",       limit: 255
    t.string   "titleimage",      limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "password_digest", limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  add_foreign_key "comments", "articles"
end
