class TasksController < ApplicationController

  def index
    @tasks = Task.all
    render('tasks/index.html.erb')
  end

  def new
    render('tasks/new.html.erb')
  end

  def create
    @task = Task.create(params[:task])
    if @task.save
      render('tasks/success.html.erb')
    else
      render('tasks/new.html.erb')
    end
  end

  def done
    @task = Task.find(params[:id])
    @task.update_column(:completed, true)
    @task.save
  end

end
