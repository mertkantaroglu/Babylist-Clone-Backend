class CreateGiftCartitems < ActiveRecord::Migration[7.0]
  def change
    create_table :gift_cartitems do |t|
      t.references :gift, references: :gifts, null: false, foreign_key: { to_table: :gifts }
      t.references :cartitem, references: :cart_items, null: false, foreign_key: { to_table: :cart_items}

      t.timestamps
    end
  end
end
