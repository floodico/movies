class MoviesController < ApplicationController
  def index
    # sort_by.reverse - fastest way to sort date by desc
    # proof: http://stackoverflow.com/questions/2642182/sorting-an-array-in-descending-order-in-ruby
    @movies = (Serial.all + Film.all).sort_by { |movie| movie.created_at }.reverse
  end
  
end
