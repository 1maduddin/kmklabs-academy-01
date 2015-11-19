require 'rails_helper'

RSpec.describe User, type: :model do
    it "creates multiple users" do
        FactoryGirl.reload
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
    
    it "has secure password" do
        user = build(:user, password: nil)
        expect(user.password_digest).to be_nil

        user.password = "1234"
        expect(user.password_digest).not_to be_nil
        user.password_confirmation = "123"
        expect(user.valid?).to be_falsey

        user.password_confirmation = "1234"
        expect(user.valid?).to be_truthy

        user.save
    end
end
