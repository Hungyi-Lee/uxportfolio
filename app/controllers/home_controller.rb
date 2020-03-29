class HomeController < ApplicationController
  def index
    @projects = Project.all.reverse
  end
end
