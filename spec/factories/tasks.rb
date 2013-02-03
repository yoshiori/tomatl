# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task do
    name "test task"
    plan 1
  end

  factory :active_task, class: Task do
    name "active task"
    plan 1
  end

  factory :finished_task, class: Task do
    name "finished task"
    plan 1
    finished_at Date.today
  end
end
