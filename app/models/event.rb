class Event < ApplicationRecord
  validates :title, presence: true, length: { minimum: 5, maximum: 255 }
  validates_associated :creator
  validate :after_hour_validation

  belongs_to :creator, class_name: 'User'

  private

  def after_hour_validation
    errors.add(:date, 'must be later!') unless date > (Time.now + 3600)
  end
end
