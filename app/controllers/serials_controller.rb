class SerialsController < ApplicationController
  def index
    @serials = Serial.all
  end

  def show
    @serial = Serial.find(params[:id])
  end

end
