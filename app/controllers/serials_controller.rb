class SerialsController < ApplicationController
  def index
    @serials = Serial.all
  end

  def show
    @serial = Serial.find_by_name(params[:name])
  end

end
