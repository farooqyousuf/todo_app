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
     if @task.update_attributes(params[:task])
       redirect_to @task, notice: "Task #{@task.name} updated!"
     else
       render :edit
     end
   end
   
   def new
     @task = Task.new
   end
   
   def create
     @task = Task.new(params[:task])
     if @task.save
       redirect_to @task, notice: "Task #{@task.name} created!"
     else
       render :new
     end
   end
   
   def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to root_url, notice: "Task was deleted"
   end
   
end
