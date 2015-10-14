class Movie < ActiveRecord::Base

	has_and_belongs_to_many :movie_lists

	def find_additional_info(movie_title)
		#initialize API Call to Mashape
		mashape = Mashape.new
		data = mashape.get_data(movie_title)
		
		jdata = JSON.parse(data)

		self.thumbnail = jdata['result']['thumbnail']

		self.director = jdata['result']['director']

		self.cast = jdata['result']['cast']
	
	end
end
