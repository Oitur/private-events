class Attending < ApplicationRecord
  belongs_to :attend_event, class_name: 'Event'
  belongs_to :attendee, class_name: 'User'
end
