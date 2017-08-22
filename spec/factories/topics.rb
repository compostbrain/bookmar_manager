FactoryGirl.define do

  # topic factory with a `belongs_to` association for the user
  factory :topic do
    title "Through the Looking Glass"
    user
  end
end
