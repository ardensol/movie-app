class ReviewsController < ApplicationController
	before_action :set_review, only: [:show, :edit, :update, :destroy]

	def index
	end

	def show 
	end



	private

	def set_movie
		@review = Review.find(params[:id])
	end
end