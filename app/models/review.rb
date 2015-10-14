class Review < ActiveRecord::Base
	belongs_to :movie
	validates :user_email, :rating, presence: true
end
