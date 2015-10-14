class Review < ActiveRecord::Base
	belongs_to :movie
	validates :user_email, :rating, presence: true
	validates_format_of :user_email, with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
end
