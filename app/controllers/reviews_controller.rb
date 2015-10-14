class ReviewsController < ApplicationController
	before_action :set_review, only: [:show]

	def index
		@reviews = Review.all
	end

	def show 
	end

	def create
		@review = Review.new(review_params)
		@review.movie_id = params['movie_id']

		respond_to do |format|
			if @review.save
				format.html { redirect_to :back, notice: "Your Review was Successfully Created" }
			else
				format.html { redirect_to :back, notice: @review.errors.messages.first.join(' ').to_s}
			end
		end
		
	end


	private

	def set_review
		@review = Review.find(params[:id])
	end

	def review_params
		params.require(:review).permit(:user_email, :rating, :comment)
	end
end