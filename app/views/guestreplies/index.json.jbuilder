json.array!(@guestreplies) do |guestreply|
  json.extract! guestreply, :id, :user_id, :event_id, :guest_count
  json.url guestreply_url(guestreply, format: :json)
end
