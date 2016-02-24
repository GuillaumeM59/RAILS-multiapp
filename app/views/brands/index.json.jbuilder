json.array!(@brands) do |brand|
  json.extract! brand, :id, :name, :address, :place, :logo
  json.url brand_url(brand, format: :json)
end
