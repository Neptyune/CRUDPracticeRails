json.extract! dog, :id, :account_id, :name, :breed, :bio, :sociability, :img, :created_at, :updated_at
json.url dog_url(dog, format: :json)
