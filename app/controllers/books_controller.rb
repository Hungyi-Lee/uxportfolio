class BooksController < ApplicationController
  def index
    @sideprojects = Sideproject.where(tag: "Books").order("created_at desc").all
    # @sideprojects = Sideproject.where('tag LIKE ?', '%Books%').all
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
