json.array!(@products) do |product|
  json.extract! product, :id, :name, :desc, :sku, :price, :brand, :model
  json.url product_url(product, format: :json)
end
