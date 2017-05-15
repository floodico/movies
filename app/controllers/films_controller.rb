class FilmsController < ApplicationController
  def index
    @films = Film.all
  end

  def show
    @film = Film.friendly.find(params[:id])
    @review = @film.reviews.new
  end
end
