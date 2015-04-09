json.array!(@users) do |user|
  json.extract! user, :id, :id, :login, :passe, :statut
  json.url user_url(user, format: :json)
end
