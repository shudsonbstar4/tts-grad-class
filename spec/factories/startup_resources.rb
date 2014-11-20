# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :startup_resource do
    user_id 1
    category "MyString"
    name "MyString"
    url "MyString"
  end
end
