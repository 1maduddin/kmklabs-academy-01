require 'spec_helper'

feature 'View Product List' do
    scenario 'Display List of Product' do
        visit products_path
        expect(page).to have_content 'List of Products'
    end
    
    scenario 'Should have pagination enabled' do
        visit products_path
        expect(page).to have_content 'Previous'
        expect(page).to have_selector 'ul.pagination'
        expect(page).to have_css '.pagination'
    end
end
