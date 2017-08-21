FactoryGirl.define do
  sequence(:url) do |n|
     "http#{n}.com"
  end

  factory :bookmark do
    url { generate :url }
    topic
  end
end
