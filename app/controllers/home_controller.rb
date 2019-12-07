class HomeController < ApplicationController
  def index
    @projects = Project.last(3).reverse
  end
end
