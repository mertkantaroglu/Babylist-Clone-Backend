class CartItem < ApplicationRecord
  belongs_to :user, class_name: 'User'

  validates presence: true
end