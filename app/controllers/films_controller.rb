class FilmsController < ApplicationController
  before_action :find_film, only: :show
  before_action :set_review, only: :show
  before_action :set_rating, only: :show

  def index
    @films = Film.all
  end

  def show

  end

  private

  def find_film
    @film = Film.friendly.find(params[:id])
  end

  def set_review
    @review = @film.reviews.new
  end

  def set_rating
    @reviews = @film.reviews

    if @reviews.blank?
      @avg_review = 0
    else
      @avg_review = @reviews.average(:rating).round(2)
    end
  end
end
