json.extract! event, :id, :start, :title, :created_at, :updated_at
json.url event_url(event, format: :json)
