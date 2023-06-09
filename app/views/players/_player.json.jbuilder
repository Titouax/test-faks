json.extract! player, :id, :name, :elo, :age, :created_at, :updated_at
json.url player_url(player, format: :json)
