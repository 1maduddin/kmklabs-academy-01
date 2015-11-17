require 'rails_helper'

RSpec.describe Problem, type: :model do
    it "creates valid problem" do
        expect(create(:problem)).to be_valid 
    end

    it "reject status other than new, assigned, fixed, closed" do
        expect(build(:problem, status: 'other')).not_to be_valid
    end

    it "may be searched by status" do
        create(:problem)
        expect(Problem.where(status: 'new').blank?).to be_falsey 
        expect(Problem.where(status: 'assigned').blank?).to be_truthy 
    end
    
    it "creates valid associations" do
        FactoryGirl.reload
        p = create(:problem)
        expect(p.user.username).to eql "user1" 
        expect(p.product.code).to eql "APP-01"
    end

end
