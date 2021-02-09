class Attendance < ApplicationRecord
    belongs_to :attendee_id, class_name: "User"
    belongs_to :event_to_attend, class_name: "Event"
end
