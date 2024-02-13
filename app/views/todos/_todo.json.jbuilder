json.extract! todo, :id, :todo, :created_at, :updated_at
json.url todo_url(todo, format: :json)
