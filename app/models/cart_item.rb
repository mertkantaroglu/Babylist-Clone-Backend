class CartItem < ApplicationRecord
  belongs_to :user, class_name: 'User'

  has_many :gift_cartitem, dependent: :destroy
  has_many :gifts, through: :gift_cartitem, dependent: :destroy

  validates :name, :price, :count, presence: true
end