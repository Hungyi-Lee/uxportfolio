class ProjectsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.user_id = current_user.id
    if @project.save
     redirect_to projects_path
   else
     render :new
   end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      redirect_to projects_path
    else
      render :template => "projects/edit"
    end
  end

  def show
    @project = Project.find(params[:id])
  end

  def index
    @projects = Project.all
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path
  end

  private

  def project_params
    params.require(:project).permit(:title, :user_id, :coverimage, :description, :category, :projectdate)
  end
end
