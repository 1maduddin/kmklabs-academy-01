require 'rails_helper'

RSpec.describe Comment, type: :model do
    it "creates valid comment" do
        expect(build(:comment)).to be_valid
    end
end
