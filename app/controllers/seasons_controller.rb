class SeasonsController < ApplicationController
  before_action :find_serial

  def show
    @season = @serial.seasons.find(params[:id])
  end

  private

  def find_serial
    @serial = Serial.find(params[:id])
  end

end
