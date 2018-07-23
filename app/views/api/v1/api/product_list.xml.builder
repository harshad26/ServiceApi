xml.response(:code => @code) do 
  xml.products do
    @products.each do |product| 
      xml.product do
        xml.id(product.id)
        xml.name(product.name)
        xml.description(product.description)
        xml.unit_price(product.price, :currency => "usd")
        xml.quantity(product.quantity)
        xml.created_at(product.created_at.strftime("%d-%m-%Y"))
        xml.updated_at(product.updated_at.strftime("%d-%m-%Y"))
      end
    end
  end 
end