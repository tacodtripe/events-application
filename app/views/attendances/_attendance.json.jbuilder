json.extract! attendance, :id, :attendee, :event_to_attend, :created_at, :updated_at
json.url attendance_url(attendance, format: :json)
