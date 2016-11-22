class TasksController < ApplicationController
  before_action :set_task, only: [:destroy, :update]

  def index
    @tasks = Task.all.order(done: :asc, created_at: :desc)
  end

  def create
    Task.create! name: task_params[:name]
    redirect_to action: 'index'
  end

  def destroy
    @task.destroy!
    redirect_to action: 'index'
  end

  def update
    @task.update! task_params
    redirect_to action: 'index'
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:name, :done)
  end
end
