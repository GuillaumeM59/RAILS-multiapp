json.array!(@brands) do |brand|
  json.extract! brand, :id, :name, :content
  json.url brand_url(brand, format: :json)
end
