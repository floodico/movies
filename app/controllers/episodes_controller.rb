class EpisodesController < ApplicationController
  before_action :find_serial
  before_action :find_season

  def show
    @episode = @season.episodes.friendly.find(params[:episode_id])
  end

  private

  def find_serial
    @serial = Serial.friendly.find(params[:serial_id])
  end

  def find_season
    @season = @serial.seasons.friendly.find(params[:season_id])
  end

end
