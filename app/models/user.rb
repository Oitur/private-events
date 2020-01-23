class User < ApplicationRecord
  validates :name, presence: true, length: {minimum: 3, maximum: 25}

  has_many :events, foreign_key: 'creator_id'
end
