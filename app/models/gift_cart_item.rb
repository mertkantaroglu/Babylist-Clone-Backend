class GiftCartItem < ApplicationRecord
  belongs_to :gift, foreign_key: 'gift_id'
  belongs_to :cart_item, foreign_key: 'cartitem_id'
end