# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :pomodoro do
    task nil
    finished_at "2013-02-01"
  end
end
