class TasksController < ApplicationController
  def destroy
    @task = Task.find params[:id]
    @task.destroy
    redirect_to :back
  end
end
