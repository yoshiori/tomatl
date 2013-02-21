# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task do
    user
    name "test task"
    plan 1

    after(:create) do |task|
       FactoryGirl.create(:pomodoro, task: task)
       FactoryGirl.create(:pomodoro, task: task)
    end
  end

  factory :active_task, class: Task do
    user
    name "active task"
    plan 1

    after(:create) do |task|
       FactoryGirl.create(:pomodoro, task: task)
    end
  end

  factory :finished_task, class: Task do
    user
    name "finished task"
    plan 1
    finished_at Date.today - 1.day

    after(:create) do |task|
       FactoryGirl.create(:pomodoro, task: task)
    end
  end
end
