require 'spec_helper'

feature 'Display Product Detail' do
    scenario 'product with the specified id exists in database' do
        visit products_path
        link_product = page.find(:xpath, "//tbody/tr[5]/td[1]/a")
        product_code = page.find(:xpath, "//tbody/tr[5]/td[2]").native.text
        link_product.click
        expect(page).to have_content product_code
    end

    scenario 'product not exists in database' do
        visit 'products/10000'
        expect(page).to have_content 'Product with id 10000 not found'
    end
end
