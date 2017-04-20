json.extract! artist, :id, :first_name, :last_name, :description, :user_id, :art_id, :created_at, :updated_at
json.url artist_url(artist, format: :json)
