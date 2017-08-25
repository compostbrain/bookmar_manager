FactoryGirl.define do

  # topic factory with a `belongs_to` association for the user
  factory :topic do
    title "Through the Looking Glass"
    user
  end

  factory :another_topic, class: "Topic" do
    title "Another topic"
    user
  end
end
