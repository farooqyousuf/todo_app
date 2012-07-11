class TasksController < ApplicationController
  
  def index
     @task = Task.all
   end
   
   def show
     @task = Task.find(params[:id])
   end
   
   def edit
     @task = Task.find(params[:id])
   end
   
   def update
     @task = Task.find(params[:id])
     @task.update_attributes(params[:task])
     redirect_to @task
   end
   
end
