class EpisodesController < ApplicationController
  before_action :find_serial
  before_action :set_review

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

end
