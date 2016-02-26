json.array!(@products) do |product|
  json.extract! product, :id, :name, :user_id, :content, :brand_id, :price
  json.url product_url(product, format: :json)
end
