require 'rails_helper'

describe ProductsController do

    let(:valid_product) { build(:product) }
    let(:invalid_product) { build(:product, code: nil)}

    describe "index" do
        it "should use pagination then render index template" do
            # membuat mock
            mock_product_class = class_double("Product").as_stubbed_const
            
            # mempersiapkan / memprogram mock
            # supaya return value sesuai keinginan
            expect(mock_product_class).to receive(:paginate).with(page: "2", per_page: 10)

            # jalankan aplikasi, pastikan mock dipanggil sesuai ekspektasi
            get :index, page: 2
        end

        it "should display 0 record when user request page 3" do
            mock_product = class_double("Product").as_stubbed_const

            # harusnya return array kosong
            no_product = []
            
            expect(mock_product).to receive(:paginate).with(page: "3", per_page: 10).and_return(no_product)

            get :index, page: 3
        end
    end

    describe "create" do
        it "should save valid data" do
            post :create, product: valid_product.attributes
            expect(response).to redirect_to(action: "index")
        end

        it "should reject invalid data" do
            expect_any_instance_of(Product).to receive(:save).and_return(false)
            post :create, product: invalid_product.attributes
            expect(response).to render_template("new")
        end
    end


    describe "show" do
        it "should show data for valid ID"
        it "should display error for invalid ID"
    end

    describe "create" do
        it "should store valid data to database using ActiveRecord"
        it "should reject invalid data"
    end

    describe "edit" do
        it "should display existing data for valid ID"
        it "should display error for invalid ID"
    end

    describe "update" do
        it "should save valid data"
        it "should reject invalid data"
    end

    describe "destroy" do
        
    end

end
