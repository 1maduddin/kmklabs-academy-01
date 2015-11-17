FactoryGirl.define do
  factory :user do
    sequence(:fullname) { |n| "User #{n}"}
    sequence(:email)    { |n| "user#{n}@geemail.com"}
    sequence(:username) { |n| "user#{n}"}
    sequence(:password) { |n| "secret#{n}"}

    trait :user1 do
        fullname "User 1"
        email "user1@geemail.com"
        username "user1"
        password "secret1"
    end

    trait :with_password_less_than_three do
        sequence(:password) { |n| "a#{n}" }
    end

    trait :with_invalid_email do
        email "not_valid_email.com"
    end

    trait :with_special_chars_in_email do
        email "endy+muhardin@gmail.com"
    end

  end
end
