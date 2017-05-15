class ReviewsController < ApplicationController
  before_action :find_movie

  def create
    @review = @movie.reviews.create(review_params)

    respond_to do |format|
      format.html
      format.js
    end
  end

  private

  def find_movie
    resource, id = request.path.split('/')[1,2]
    @movie = resource.singularize.classify.constantize.friendly.find(id)
  end

  def review_params
    params.require(:review).permit(:text)
  end

end
