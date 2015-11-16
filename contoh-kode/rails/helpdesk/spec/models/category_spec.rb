require 'rails_helper'

describe 'Category' do
    it 'has a valid factory' do
        expect(create(:category)).to be_valid
    end

    it 'is invalid without code' do
        expect(build(:category, code: nil)).not_to be_valid
    end

    it 'is invalid without name' do
        expect(build(:category, name: nil)).not_to be_valid
    end
end
