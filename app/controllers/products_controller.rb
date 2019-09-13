class ProductsController < ApplicationController
    def index
      @products = Product.all
      render json: @products, status: :ok
    end
  
    def show
      begin
        @product = Product.find(params[:id])
        render json: @product, status: :ok
      rescue ActiveRecord::RecordNotFound
        render json: { message: "no product matches that ID" }, status: :not_found
      rescue Exception
        render json: { message: "there was some other error" }, status: :internal_server_error
      end
    end
  
  end