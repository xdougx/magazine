json.array!(@magazines) do |magazine|
  json.extract! magazine, :id, :name, :thumb, :description
  json.url magazine_url(magazine, format: :json)
end
