class CartItem < ApplicationRecord
  belongs_to :user, class_name: 'User'

  validates :name, :price, :count, presence: true
end