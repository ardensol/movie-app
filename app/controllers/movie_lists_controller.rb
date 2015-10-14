class MovieListsController < ApplicationController
	before_action :set_movie_list, only: [:show, :edit, :update, :destroy]


	def index
	end

	def show
		@movies = @movie_list.movies
	end



	private

	def set_movie_list
		@movie_list = MovieList.find(params[:id])
	end

end