json.array!(@events) do |event|
  json.extract! event, :id, :group_id, :event_title, :event_desc, :start_time, :end_time
  json.url event_url(event, format: :json)
end
