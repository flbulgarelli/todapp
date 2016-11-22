class TasksController < ApplicationController
  def index
    @tasks = Task.all.order(done: :asc, created_at: :desc)
  end

  def create
    Task.create! name: task_params[:name]
    redirect_to action: 'index'
  end

  def update
    Task.find(params[:id]).update! task_params
    redirect_to action: 'index'
  end

  def task_params
    params.require(:task).permit(:name, :done)
  end
end
