class CreateGifts < ActiveRecord::Migration[7.0]
  def change
    create_table :gifts do |t|
      t.string :name, null: false
      t.decimal :price, null: false
      t.string :color, null: false
      t.integer :count, null: false
      t.string :image_url, null: false
      t.string :description, null: false
      t.string :specs, null:false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
