require 'rails_helper'

RSpec.describe Product, type: :model do
    it "creates valid product" do
        expect(build(:product)).to be_valid
    end
end
