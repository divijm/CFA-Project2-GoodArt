json.extract! art, :id, :title, :description, :price, :type, :size, :medium, :location, :date_made, :user_id, :created_at, :updated_at
json.url art_url(art, format: :json)
