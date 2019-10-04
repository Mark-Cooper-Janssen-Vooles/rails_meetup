json.extract! user, :id, :name, :photo_url, :location, :interests, :list_of_groups, :date, :created_at, :updated_at
json.url user_url(user, format: :json)
