FactoryGirl.define do

  factory :user do

    sequence(:email){ |n| "user#{n}@factory.com"}

    password "asdfasdfasdf"
    password_confirmation "asdfasdfasdf"
  end
end
