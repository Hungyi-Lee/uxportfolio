class LabsController < ApplicationController
  def index
    @sideprojects = Sideproject.where(tag: "Lab").all
    # @sideprojects = Sideproject.where('tag LIKE ?', '%Lab%').all
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
