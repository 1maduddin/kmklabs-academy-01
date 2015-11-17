require 'rails_helper'

RSpec.describe User, type: :model do
    it "creates multiple users" do
        users = build_list(:user, 10)
        expect(users.length).to eq 10
        expect(
            users.find {|u| u[:email] == 'user1@geemail.com'}
        ).not_to be_nil
    end
    
    it "rejects invalid email" do
        user = build(:user, :with_invalid_email)
        expect(user).not_to be_valid
    end

    it "accepts special chars in email" do
        user = build(:user, :with_special_chars_in_email)
        expect(user).to be_valid
    end
end
