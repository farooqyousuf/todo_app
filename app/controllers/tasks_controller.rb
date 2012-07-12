class TasksController < ApplicationController
  
  def index
     @tasks = Task.all
     @pending_tasks = Task.where("status = ?","Pending")
     @completed_tasks =Task.where("status = ?","Complete")
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
   
   def new
     @task = Task.new
   end
   
   def create
     @task = Task.new(params[:task])
     @task.save
     redirect_to @task
   end
   
   def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to root_url
   end
   
end
