module TasksHelper
  def task_checked(task)
    'checked' if task.done
  end
end
