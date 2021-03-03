class Attendance < ApplicationRecord
  belongs_to :attendee, class_name: 'User'
  belongs_to :event_to_attend, class_name: 'Event'
  validates_presence_of :attendee_id, :event_to_attend_id
end
