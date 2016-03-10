json.array!(@collections) do |collection|
  json.extract! collection, :id, :title, :ownerid, :description
  json.url collection_url(collection, format: :json)
end
