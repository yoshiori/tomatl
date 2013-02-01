class PomodorosController < ApplicationController
  before_filter :login_required

  def create
    task = Task.find(params[:task_id])
    task.pomodoros.build(:finished_at => Time.now)
    task.save
    redirect_to :back
  end
end
