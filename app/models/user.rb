class User < ApplicationRecord
  has_many :gifts, foreign_key: 'user_id'

  validates :name, presence: true
end