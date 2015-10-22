FactoryGirl.define do
  factory :movie do
    sequence(:n) { |n| "MyString #{n}" }
    description "MyText"
    year 1900
  end

end
