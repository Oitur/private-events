# frozen_string_literal: true

class Event < ApplicationRecord
  scope :past, -> { where("date < ?", Time.now) }
  scope :upcoming, -> { where("date > ?", Time.now) }

  validates :title, presence: true, length: { minimum: 5, maximum: 255 }
  validates_associated :creator
  validate :after_hour_validation

  belongs_to :creator, class_name: 'User'

  has_many :attendings, foreign_key: :attend_event
  has_many :attendees, through: :attendings
  private

  def after_hour_validation
    errors.add(:date, 'must be later!') unless date > (Time.now + 3600)
  end
end
