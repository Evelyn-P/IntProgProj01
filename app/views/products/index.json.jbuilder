json.array!(@products) do |product|
  json.extract! product, :id, :Invoice_id, :Product_Name, :Category, :Product_URL, :Quantity, :Details
  json.url product_url(product, format: :json)
end
