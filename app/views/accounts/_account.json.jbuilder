json.extract! account, :id, :username, :firstname, :lastname, :email, :phone, :password, :location, :created_at, :updated_at
json.url account_url(account, format: :json)
