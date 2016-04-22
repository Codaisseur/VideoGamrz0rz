json.array!(@games) do |game|
  json.extract! game, :id, :name, :rating, :picture, :published_at, :console_id
  json.url game_url(game, format: :json)
end
