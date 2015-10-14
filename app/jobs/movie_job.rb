class MovieJob < ActiveJob::Base
  def perform(movie)
    
    #call API to find additional information
    movie.find_additional_info(movie.title)

    movie.save
  end

end