class HomeController < ApplicationController
  def index
  end

  def mimetodo
  end

  def show
    @nombre = params[:nombre]
  end
end
