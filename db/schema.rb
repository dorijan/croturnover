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

ActiveRecord::Schema.define(:version => 20120806005446) do

  create_table "autos", :force => true do |t|
    t.string "marka"
    t.string "registr", :limit => 25
  end

  create_table "firmas", :force => true do |t|
    t.string "naziv"
    t.string "sjediste"
    t.string "adresa1"
    t.string "adresa2"
    t.string "gradbroj"
    t.string "mb"
    t.string "OIB"
    t.string "ibanbrracuna"
    t.string "ziro"
    t.string "ostalo"
  end

  create_table "lokos", :force => true do |t|
    t.integer "radnik_id"
    t.integer "auto_id"
    t.date    "datum"
    t.integer "poc_broj"
    t.integer "kraj_broj"
    t.string  "lokacija"
    t.string  "izvjesce"
    t.string  "dodatak"
    t.decimal "dodcijena", :precision => 10, :scale => 2
  end

  create_table "ponstavkas", :force => true do |t|
    t.integer "ponuda_id"
    t.integer "stavka_id"
    t.integer "kolicina"
    t.integer "rabat"
  end

  create_table "ponudas", :force => true do |t|
    t.integer "firma"
    t.date    "datum"
    t.integer "redbroj"
  end

  create_table "racstavkas", :force => true do |t|
    t.integer "racun_id"
    t.integer "stavka_id"
    t.integer "kolicina"
    t.integer "rabat"
  end

  create_table "racuns", :force => true do |t|
    t.integer "firma_id"
    t.date    "datum"
    t.date    "datumdob"
    t.integer "redbroj"
    t.integer "godina"
    t.string  "vrstar",   :limit => 25
    t.integer "rokpl"
    t.boolean "dodajzig"
    t.boolean "placeno"
  end

  create_table "radniks", :force => true do |t|
    t.string "ime"
    t.string "prez"
    t.string "OIB"
  end

  create_table "stavkas", :force => true do |t|
    t.string  "naziv"
    t.decimal "cijena", :precision => 10, :scale => 2
    t.integer "tip_id"
  end

  create_table "tips", :force => true do |t|
    t.string "naziv"
  end

  create_table "ulracunis", :force => true do |t|
    t.date     "datum"
    t.string   "opis"
    t.decimal  "iznos",             :precision => 7, :scale => 2
    t.decimal  "priznos",           :precision => 7, :scale => 2
    t.string   "scan_file_name"
    t.string   "scan_content_type"
    t.integer  "scan_file_size"
    t.datetime "scan_updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
