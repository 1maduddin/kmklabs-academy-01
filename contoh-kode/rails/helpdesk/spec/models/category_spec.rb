require 'rails_helper'

describe 'Category' do
    it 'has a valid factory' do
        create(:category).should be_valid
    end

    it 'is invalid without code' do
        build(:category, code: nil).should_not be_valid
    end

    it 'is invalid without name' do
        build(:category, name: nil).should_not be_valid
    end
end
