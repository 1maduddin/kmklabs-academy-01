require 'spec_helper'

feature 'Display Product Detail' do
    scenario 'product with the specified id exists in database' do
        visit 'products/10'
        expect(page).to have_content 'Code'
    end

    scenario 'product not exists in database' do
        visit 'products/10000'
        expect(page).to have_content 'Product with id 10000 not found'
    end
end
