class HomeController < ApplicationController
  def index
    @projects = Project.order("updated_at desc").all
  end
end
