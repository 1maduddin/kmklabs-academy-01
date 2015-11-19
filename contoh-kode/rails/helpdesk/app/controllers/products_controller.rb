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

    def new
        @product = Product.new
    end

    def create
        p = params.require(:product).permit(:code, :name)

        @product = Product.new(p)

        if @product.valid?
            @product.save
            flash[:notice] = "Product #{@product.code} sudah tersimpan"
            redirect_to action: "index"
        else
            render "new"
        end

    end
end
