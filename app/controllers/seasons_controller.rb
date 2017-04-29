class SeasonsController < ApplicationController
  before_action :find_serial

  def show
    @season = @serial.seasons.friendly.find(params[:season_id])
  end

  private

  def find_serial
    @serial = Serial.friendly.find(params[:serial_id])
  end

end
