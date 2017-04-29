class EpisodesController < ApplicationController
  before_action :find_serial
  before_action :find_season

  def show
    @episode = @season.episodes.find(params[:episode_id])
  end

  private

  def find_serial
    @serial = Serial.find(params[:serial_id])
  end

  def find_season
    @season = @serial.seasons.find(params[:season_id])
  end

end
