class Event < ApplicationRecord

    has_many :attendances, foreign_key: :attendee
    has_many :attendees, through: :attendances, source: :attendee_id
    belongs_to :user
end
