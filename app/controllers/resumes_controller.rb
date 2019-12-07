class ResumesController < ApplicationController
  def index
    @projects = Project.all
    @works = Work.all.reverse
  end
end
