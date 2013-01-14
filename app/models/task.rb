class Task < ActiveRecord::Base
  belongs_to :user
  attr_accessible :finished_at, :name
end
