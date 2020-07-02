json.extract! event, :id, :name, :cost, :created_at, :updated_at
json.url event_url(event, format: :json)
