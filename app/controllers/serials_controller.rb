class SerialsController < ApplicationController
  def index
    @serials = Serial.all
  end

end
