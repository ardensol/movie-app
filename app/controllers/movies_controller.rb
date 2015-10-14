class MoviesController < ApplicationController
	before_action :set_movie, only: [:show]

	def index
	end

	def show 
		@reviews = @movie.reviews
		@review = Review.new
	end

	private

	def set_movie
		@movie = Movie.find(params[:id])
	end
end