json.array!(@adventure_lists) do |adventure_list|
  json.extract! adventure_list, :id, :user_id, :action_id, :adventure
  json.url adventure_list_url(adventure_list, format: :json)
end
