FactoryGirl.define do
  factory :problem do
    title "Sample Problem"
    description "Sample problem for testing purpose"
    status :new

    user
    product

  end

end
