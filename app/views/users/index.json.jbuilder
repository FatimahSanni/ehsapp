json.array!(@users) do |user|
  json.extract! user, :id, :username, :email, :password, :role_id
  json.url user_url(user, format: :json)
end
