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
        @product = Product.new(product_params)

        if @product.save
            flash[:notice] = "Product #{@product.code} sudah tersimpan"
            redirect_to action: "index"
        else
            render "new"
        end

    end

    def edit
        @product = Product.find(params[:id])
        rescue ActiveRecord::RecordNotFound
            flash[:notice] = "Product with id #{params[:id]} not found"
            redirect_to action: "index"
    end

    def update
        p = Product.find(params[:id])
        if p.update(product_params)
            flash[:notice] = "Product #{p.code} sudah tersimpan"
            redirect_to action: "index"
        else
            render "edit"
        end
    end
    
    def destroy
        p = Product.destroy params[:id]
        flash[:notice] = "Product #{p.code} sudah dihapus"
        redirect_to action: "index"
    end

    private

        def product_params
            params.require(:product).permit(:code, :name)
        end
end
