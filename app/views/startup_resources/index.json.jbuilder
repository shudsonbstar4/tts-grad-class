json.array!(@startup_resources) do |startup_resource|
  json.extract! startup_resource, :id, :user_id, :category, :name, :url
  json.url startup_resource_url(startup_resource, format: :json)
end
