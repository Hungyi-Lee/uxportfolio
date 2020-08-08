class SideprojectsController < ApplicationController
  def new
    @sideproject = Sideproject.new
  end

  def create
    @sideproject = Sideproject.new(sideproject_params)
    # @project.user_id = current_user.id
    if @sideproject.save
     redirect_to sideprojects_path
   else
     render :new
   end
  end

  def index
    @sideprojects = Sideproject.order("created_at desc").all
    if params[:search].present?
      @sideprojects = @sideprojects.get_all params[:search]
    end
    @feature_one = Sideproject.where(tag: "career").sample
    # @feature_one = Sideproject.where('tag LIKE ?', '%Work Notes%').first
    @feature_rest = Sideproject.where(tag: "Skillshare").take(3)
  end

  def show
    # @sideproject = Sideproject.find(params[:id])
    @sideproject = Sideproject.find_by(title: params[:title])
    @sideprojects = Sideproject.all
  end

  def edit
    @sideproject = Sideproject.find(params[:id])
  end

  def destroy
  end

  def update
    @sideproject = Sideproject.find(params[:id])
    if @sideproject.update(sideproject_params)
      redirect_to sideprojects_path
    else
      render :template => "sideprojects/edit"
    end
  end

  private

  def sideproject_params
    params.require(:sideproject).permit(:title,
                                        :projectdate,
                                        :briefintro,
                                        :overview,
                                        :coverimage,
                                        :description,
                                        :tag
                                       )
  end
end
