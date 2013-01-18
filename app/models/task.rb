class Task < ActiveRecord::Base
  belongs_to :user

  attr_accessible :finished_at, :name, :plan

  validates :name, :presence => true
  validates :plan, :presence => true, :numericality => true
end
