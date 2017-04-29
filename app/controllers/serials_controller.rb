class SerialsController < ApplicationController
  def index
    @serials = Serial.all
  end

  def show
    @serial = Serial.find(params[:serial_id])
  end

end
