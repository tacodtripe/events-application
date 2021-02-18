class Event < ApplicationRecord
  has_many :attendances, foreign_key: :event_to_attend
  has_many :attendees, through: :attendances, source: :attendee_id
  belongs_to :user
end
