json.array!(@peers) do |peer|
  json.extract! peer, :id, :user_id, :name, :bio
  json.url peer_url(peer, format: :json)
end
