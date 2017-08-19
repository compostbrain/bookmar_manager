FactoryGirl.define do
  sequence(:email) do |n|
     "user#{n}@factory.com"
  end
  sequence(:username) do |n|
     "username#{n}"
  end

  factory :user do
    username { generate :username }
    email { generate :email }
    password "asdfasdfasdf"
    password_confirmation "asdfasdfasdf"
    confirmed_at Time.now
  end
end
