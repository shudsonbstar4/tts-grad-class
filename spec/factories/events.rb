# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    group_id 1
    event_title "MyString"
    event_desc "MyText"
    start_time "2014-12-10 21:53:53"
    end_time "2014-12-10 21:53:53"
  end
end
