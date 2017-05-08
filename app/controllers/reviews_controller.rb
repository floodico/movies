class ReviewsController < ApplicationController
  before_action :find_serial

  def create
    @review = @serial.reviews.create(review_params)

    respond_to do |format|
      format.html
      format.js
    end
  end

  private

  def find_serial
    @serial = Serial.friendly.find(params[:serial_id])
  end

  def review_params
    params.require(:review).permit(:text)
  end

end
