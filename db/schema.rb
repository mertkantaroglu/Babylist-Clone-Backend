ActiveRecord::Schema[7.0].define(version: 2023_09_01_181104) do
  enable_extension "plpgsql"

  create_table "cart_items", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.integer "count"
    t.bigint "user_id", null: false
    t.bigint "gift_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gift_id"], name: "index_cart_items_on_gift_id"
    t.index ["user_id"], name: "index_cart_items_on_user_id"
  end

  create_table "gift_cartitems", force: :cascade do |t|
    t.bigint "gift_id", null: false
    t.bigint "cartitem_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cartitem_id"], name: "index_gift_cartitems_on_cartitem_id"
    t.index ["gift_id"], name: "index_gift_cartitems_on_gift_id"
  end

  create_table "gifts", force: :cascade do |t|
    t.string "name", null: false
    t.decimal "price", null: false
    t.string "color", null: false
    t.integer "count", null: false
    t.string "image_url", null: false
    t.string "description", null: false
    t.string "specs", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_gifts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cart_items", "gifts"
  add_foreign_key "cart_items", "users"
  add_foreign_key "gift_cartitems", "cart_items", column: "cartitem_id"
  add_foreign_key "gift_cartitems", "gifts"
  add_foreign_key "gifts", "users"
end
