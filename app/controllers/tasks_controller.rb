class TasksController < ApplicationController
  before_filter :login_required

  def index
    @tasks = Task.where(:user_id => current_user.id)
  end

  def create
    @tasks = Task.where(:user_id => current_user.id)
    @task = Task.new(params[:task])
    @task.user = current_user

    if @task.save
      redirect_to tasks_path
    else
      render :index
    end
  end
end
