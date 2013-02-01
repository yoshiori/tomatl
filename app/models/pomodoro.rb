class Pomodoro < ActiveRecord::Base
  belongs_to :task
  attr_accessible :finished_at
end
