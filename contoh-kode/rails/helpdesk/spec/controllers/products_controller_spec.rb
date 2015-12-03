require 'rails_helper'

describe ProductsController do

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



end
