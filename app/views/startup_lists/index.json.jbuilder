json.array!(@startup_lists) do |startup_list|
  json.extract! startup_list, :id, :name, :url
  json.url startup_list_url(startup_list, format: :json)
end
