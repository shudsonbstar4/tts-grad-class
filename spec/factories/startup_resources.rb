# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :startup_resource do
    user
    category "News"
    name "Detailed Block"
    url "http://www.detailedblock.com/"
  end
end
