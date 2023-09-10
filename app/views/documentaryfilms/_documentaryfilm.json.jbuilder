json.extract! documentaryfilm, :id, :name, :synopsis, :director, :created_at, :updated_at
json.url documentaryfilm_url(documentaryfilm, format: :json)
