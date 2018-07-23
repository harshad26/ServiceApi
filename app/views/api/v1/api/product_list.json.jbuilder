json.products do
  json.array!(@products) do |product|
    json.id product.id
    json.name product.name
    json.description product.description
    json.color product.color
    json.price product.price
    json.quantity product.quantity
    json.created_at product.created_at.strftime("%d-%m-%Y")
    json.updated_at product.updated_at.strftime("%d-%m-%Y")
  end
end