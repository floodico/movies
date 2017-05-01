class EpisodesController < ApplicationController
  before_action :find_serial

  def show
    @episode = @serial.episodes.friendly.find(params[:episode_id])
  end

  private

  def find_serial
    @serial = Serial.friendly.find(params[:serial_id])
  end


end
