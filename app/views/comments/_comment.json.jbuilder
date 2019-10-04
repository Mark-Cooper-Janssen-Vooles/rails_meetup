json.extract! comment, :id, :event_id, :date, :comment_text, :user_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
