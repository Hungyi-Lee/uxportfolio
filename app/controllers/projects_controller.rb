class ProjectsController < ApplicationController
  # before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    # @project.user_id = current_user.id
    if @project.save
     redirect_to root_path
   else
     render :new
   end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    # @project = Project.find_by(title: params[:title])
    if @project.update(project_params)
      redirect_to root_path
    else
      render :template => "projects/edit"
    end
  end

  def show
    # @project = Project.find(params[:id])
    @project = Project.find_by(title: params[:title])
  end

  def index
    @projects = Project.order("created_at desc").all
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to root_path
  end

  private

  def project_params
    params.require(:project).permit(:title,
                                    :coverimage,
                                    :description,
                                    :category,
                                    :projectdate,
                                    :role,
                                    :tools,
                                    :heroimage,
                                    :pdf,
                                    :password
                                  )
  end
end
