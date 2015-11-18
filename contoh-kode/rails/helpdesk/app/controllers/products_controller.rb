class ProductsController < ApplicationController

    def index
       @products = Product.paginate(page: params[:page], per_page: 10)
    end

    def show
        @product = Product.find(params[:id])
        rescue ActiveRecord::RecordNotFound
            flash[:notice] = "Product with id #{params[:id]} not found"
            redirect_to action: "index"
    end
end
