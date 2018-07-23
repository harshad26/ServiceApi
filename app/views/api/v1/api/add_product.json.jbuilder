json.product do
	json.id @product.id
	json.name @product.name
	json.description @product.description
	json.color @product.color
	json.price @product.price
	json.quantity @product.quantity
end