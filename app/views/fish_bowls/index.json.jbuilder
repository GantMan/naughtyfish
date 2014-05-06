json.array!(@fish_bowls) do |fish_bowl|
  json.extract! fish_bowl, :id
  json.url fish_bowl_url(fish_bowl, format: :json)
end
