class FilmsController < ApplicationController
  def index
    @films = Film.all
  end

  def show
    @film = Film.friendly.find(params[:id])
  end
end
