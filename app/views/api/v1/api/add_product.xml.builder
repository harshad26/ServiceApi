xml.response(:code => @code) do 
  xml.product do
    xml.id(@product.id)
    xml.name(@product.name)
    xml.description(@product.description)
    xml.price(@product.price, :currency => "usd")
    xml.quantity(@product.quantity)
  end
end