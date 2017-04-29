class ReviewsController < ApplicationController
  before_action :find_serial
  before_action :find_season
  before_action :find_episode

  def create
    @review = @episode.reviews.create(review_params)

    if @review.save
      redirect_to @episode
    else
      render 'form'
    end
  end

  private

  def find_serial
    @serial = Serial.friendly.find(params[:serial_id])
  end

  def find_season
    @season = @serial.seasons.friendly.find(params[:season_id])
  end

  def find_episode
    @episode = @season.episodes.friendly.find(params[:episode_id])
  end

  def review_params
    params.require(:review).permit(:text)
  end

end
