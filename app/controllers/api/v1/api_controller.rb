class Api::V1::ApiController < ApplicationController
	rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found

  def product_lists
  	@products = Product.all
    if @products.count >= 1
    	if request.format.symbol.to_s == "xml"
	    	@code = "Success!"
	    	render :product_list, status: :ok, format: :xml
	    else
        render :product_list, status: :ok, format: :json
      end
    else
      render json: {message: "Data Not Found", status: 404}
    end
  end

  def add_product
  	@product = Product.new(product_params)
    if @product.save
    	if request.format.symbol.to_s == "xml"
	    	@code = "Success!"
	    	render :add_product, status: :ok, format: :xml
	    else
        render :add_product, status: :ok, format: :json
      end
    else
      render json: {message: "Please enter required field", status: 500}
    end
  end

  def update_product
    @product = Product.find(params[:id])
    if @product.update(product_params)
      if request.format.symbol.to_s == "xml"
        @code = "Success!"
        render :add_product, status: :ok, format: :xml
      else
        render :add_product, status: :ok, format: :json
      end
    else
      render json: {message: "Please enter required field", status: 500}
    end
  end

  def show
    @product = Product.find(params[:id])
    if request.format.symbol.to_s == "xml"
      @code = "Success!"
      render :add_product, status: :ok, format: :xml
    else
      render :add_product, status: :ok, format: :json
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    if request.format.symbol.to_s == "xml"
      @code = "Success!"
      render  xml: {message: "Product Deleted Successfully", status: :ok, format: :xml}
    else
      render json: {message: "Product Deleted Successfully", status: :ok, format: :json}
    end
  end

  private

  def product_params
    params.permit(
        :name,
        :description,
        :price,
        :color,
        :quantity
        )
  end

  def record_not_found(error)
    render json: {error: error.message}, status: :not_found
  end
end
