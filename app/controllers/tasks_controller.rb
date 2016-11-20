class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create
    Task.create! name: task_params[:name]
    redirect_to action: 'index'
  end

  def task_params
    params.require(:task).permit(:name)
  end
end
