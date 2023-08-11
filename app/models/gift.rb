class Gift < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'users_id'

  validates :name, :price, :color, :count, :image_url, presence: true
end