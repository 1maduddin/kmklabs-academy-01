require 'rails_helper'

RSpec.describe Comment, type: :model do
    it "creates valid comment" do
        expect(build(:comment)).to be_valid
    end

    it "has valid association" do
        FactoryGirl.reload
        c = create(:comment)
        expect(c.problem.title).to eql "Sample Problem"
        expect(c.problem.user.email).to eql "user1@geemail.com"
        expect(c.problem.product.name).to eql "Aplikasi 001"
    end
end
