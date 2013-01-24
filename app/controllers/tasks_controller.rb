class TasksController < ApplicationController
  before_filter :login_required

  def index
    @tasks = Task.where(:user_id => current_user.id)
  end

  def create
    @task = Task.new(params[:task])
    @task.user = current_user

    if @task.save
      redirect_to tasks_path
    else
      @tasks = Task.where(:user_id => current_user.id)
      render :index
    end
  end

  def finish
    task = Task.find(params[:id])
    task.finish
    redirect_to :back
  end
end
