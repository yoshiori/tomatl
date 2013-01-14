class TasksController < ApplicationController
  before_filter :login_required

  def index
    @tasks = Task.where(:user => current_user)
  end
end
