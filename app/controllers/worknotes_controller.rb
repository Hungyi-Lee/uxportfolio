class WorknotesController < ApplicationController
  def index
    @sideprojects = Sideproject.where(tag: "Work Notes").all
    # @sideprojects = Sideproject.where('tag LIKE ?', '%Work Notes%').all

    if params[:search].present?
      @sideprojects = @sideprojects.get_all params[:search]
    end
  end

  private

  def sideproject_params
    params.require(:sideproject).permit(:title,
                                        :projectdate,
                                        :briefintro,
                                        :overview,
                                        :coverimage,
                                        :description
                                       )
  end
end