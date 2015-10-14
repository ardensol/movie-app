class Mashape < ApplicationController
	require 'rest-client'

	def initialize
		@headers = {'X-Mashape-Key' => "8IzACU8iENmshnZ4UBorbrdca4oZp1PoGdQjsnT6oaSyZRE4x7", :accept => :json, :content_type => :json}
	end

	def get_data(movie_title)
		@headers['params'] = {title: movie_title}

		RestClient::Request.execute(
			method: :get,
			url: 'https://metacritic-2.p.mashape.com/find/movie',
			headers: @headers
		)
	end

end