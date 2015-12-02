require 'rails_helper'

describe ProductsController do

    describe "index" do
        productClass = class_double("Product")
        expect(productClass).to receive(:paginate).with(page: 2, per_page: 10)

        get :index, 'page' => '2'
        # expect(response).to render_template("products/index")
    end

end
