json.array!(@pages) do |page|
  json.extract! page, :id, :name, :number, :file, :url, :magazine_id
  json.url page_url(page, format: :json)
end
