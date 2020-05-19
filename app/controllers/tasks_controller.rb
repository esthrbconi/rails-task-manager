class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end
  
  # create a new task - 2 steps
  # step 1: new task
  def new
    @task = Task.new
  end
  # step 2: create task  
  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path(@task)
  end

  # update a task - 2 steps
  # step 1: get task, user want to edit
  def edit
    @task = Task.find(params[:id])
  end
  # step 2: update task
  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path(@task)
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
