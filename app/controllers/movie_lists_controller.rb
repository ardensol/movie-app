class MovieListsController < ApplicationController
	before_action :set_movie_list, only: [:show]


	def index
		@movie_lists = MovieList.all
	end

	def show
		@movies = @movie_list.movies.order(params[:sort])
	end



	private

	def set_movie_list
		@movie_list = MovieList.find(params[:id])
	end

end