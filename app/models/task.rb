class Task < ActiveRecord::Base
  belongs_to :user

  has_many :pomodoros, :dependent => :destroy

  attr_accessible :finished_at, :name, :plan

  validates :name, :presence => true
  validates :plan, :presence => true, :numericality => true

  def finish
    update_attribute(:finished_at, Time.now)
  end

  def finish?
    !!finished_at
  end
end
