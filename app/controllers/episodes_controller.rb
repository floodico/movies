class EpisodesController < ApplicationController
  before_action :find_serial
  before_action :set_review
  before_action :set_rating

  def show
    @episodes = @serial.episodes
    @episode = @serial.episodes.friendly.find(params[:episode_id])

    respond_to do |format|
      format.html
      format.js
    end
  end

  private

  def find_serial
    @serial = Serial.friendly.find(params[:serial_id])
  end

  def set_review
    @review = @serial.reviews.new
  end

  def set_rating
    @reviews = @serial.reviews

    if @reviews.blank?
      @avg_review = 0
    else
      @avg_review = @reviews.average(:rating).round(2)
    end
  end

end
