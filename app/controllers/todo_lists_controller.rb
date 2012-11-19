class TodoListsController < ApplicationController
  def index
    @todo_lists = TodoList.all
    @todo_list = TodoList.new
  end

  def show
    @todo_list = TodoList.find params[:id]
    @task = @todo_list.tasks.build
  end

  def create
    @todo_list = TodoList.new params[:todo_list]
    if @todo_list.save
      redirect_to :action => :index
    else
      render :new
    end

  end

  def update
    @todo_list = TodoList.find params[:id]
    if @todo_list.update_attributes params[:todo_list]
      redirect_to :back
    else
      render :show
    end
  end
end
