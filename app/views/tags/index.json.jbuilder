json.array!(@tags) do |tag|
  json.extract! tag, :id, :name, :markable_id, :markable_type
  json.url tag_url(tag, format: :json)
end
