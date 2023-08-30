class CreateCartItems < ActiveRecord::Migration[7.0]
  def change
    create_table :cart_items do |t|
      t.string :name
      t.integer :price
      t.integer :count
      t.references :user, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
