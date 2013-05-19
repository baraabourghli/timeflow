FactoryGirl.define do

  factory :user do |u|
    u.sequence(:name) { |n| "x#{n}" }
    u.password "foobar"
    u.email { "#{name}@example.com" }
  end

  factory :project do
    title "projectTitle"
  end

end