class Api::MoviesController < ApplicationController
  respond_to :json, :js


  def create

    parsed_movies = params['movies']

    parsed_movies.each do |movie_hash|
      
      movie_hash = movie_hash[1]
      
      unless Movie.find_by_title(movie_hash['name'])
        #create new movie instance and save data if the movie does not yet exist
        movie = Movie.new
        movie.title = movie_hash['name']
        movie.release_date = movie_hash['rlsdate']

        #initiate API Call for Thumbnail and Additional Information
        movie.find_additional_info(movie_hash['name'])
        movie.save

      end
    end
  end
end
