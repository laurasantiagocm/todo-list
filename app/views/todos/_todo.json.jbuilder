json.extract! todo, :id, :name, :completed_at, :list_id, :created_at, :updated_at
json.url todo_url(todo, format: :json)
