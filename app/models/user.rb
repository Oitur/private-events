# frozen_string_literal: true

class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3, maximum: 25 }, uniqueness: true

  has_many :events, foreign_key: 'creator_id'
  has_many :attendings, foreign_key: :attendee
  has_many :attend_events, through: :attendings
end
