json.array!(@products) do |product|
  json.extract! product, :id, :name, :content, :brand_id, :quantity, :price, :visuel, :visuel_cache
  json.url product_url(product, format: :json)
end
