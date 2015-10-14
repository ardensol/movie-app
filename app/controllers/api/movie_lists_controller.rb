class Api::MovieListsController < ApplicationController
  respond_to :json, :js


  def create

    movie_list = MovieList.new

    movie_list.query = params['query']

    parsed_movies = params['movies']
    parsed_movies.each do |movie_hash|
      
      movie_hash = movie_hash[1]
      
      if Movie.find_by_title(movie_hash['name'])
        
        # add to movie list collection
        movie_list.movies << Movie.find_by_title(movie_hash['name'])

      else
        #create new movie instance and save data if the movie does not yet exist, avoiding duplication for application
        movie = Movie.new
        movie.title = movie_hash['name']
        movie.release_date = movie_hash['rlsdate']

        #initiate API Call for Thumbnail and Additional Information
        movie.find_additional_info(movie_hash['name'])
        movie.save

        # add to movie list collection
        movie_list.movies << movie

      end
    end

    movie_list.thumbnail = movie_list.movies[0].thumbnail

    movie_list.save

    redirect_to movie_list

  end
end
