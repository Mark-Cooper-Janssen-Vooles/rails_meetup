json.extract! event, :id, :name, :date, :location, :group_id, :image_url, :details, :created_at, :updated_at
json.url event_url(event, format: :json)
