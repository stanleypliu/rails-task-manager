class TasksController < ApplicationController
  # CRUD
  # Create

  def new
    @task = Task.new
  end
  # create a new task

  def create
    @task = Task.new(parameters)
    @task.save
    redirect_to index_path
  end

  # Read
  # get all tasks
  def index
    @tasks = Task.all
  end

  # get one task

  def show
    @task = Task.find(params[:id])
  end

  # Update
  # update a task

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(parameters)
    redirect_to index_path
  end
  # Destroy
  # destroy a particular task

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to index_path
  end

  def completed?
    @task = Task.find(params[:id])
    if @task.completed
      return @completion = 'This task is completed'
    else
      return @completion = 'This task is not completed yet'
    end
  end

  private

  def parameters
    params.require(:task).permit(:title, :details, :completed)
  end
end
