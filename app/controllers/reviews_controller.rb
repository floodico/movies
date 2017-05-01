class ReviewsController < ApplicationController
  before_action :find_serial
  before_action :find_episode

  def create
    @review = @episode.reviews.create(review_params)

    flash[:error] = "Review can't be blank!" unless @review.save
    redirect_to :back
  end

  private

  def find_serial
    @serial = Serial.friendly.find(params[:serial_id])
  end

  def find_episode
    @episode = @serial.episodes.friendly.find(params[:episode_id])
  end

  def review_params
    params.require(:review).permit(:text)
  end

end
