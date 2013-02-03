class Task < ActiveRecord::Base
  belongs_to :user

  has_many :pomodoros, :dependent => :destroy

  attr_accessible :finished_at, :name, :plan

  validates :name, :presence => true
  validates :plan, :presence => true, :numericality => true

  default_scope order("created_at DESC")

  scope :active, where("finished_at is null")
  scope :finished, where("finished_at is not null").order("finished_at DESC")

  def finish
    update_attribute(:finished_at, Time.now)
  end

  def finish?
    !!finished_at
  end
end
