FactoryGirl.define do
  factory :movie do
  	title "Jurassic Park"
  	thumbnail "http://static.metacritic.com/images/products/movies/4/7c2dbb435192a7abf519b96444821a85-98.jpg"
  	
  	factory :movie_with_review do
	  	after(:create) do |movie|
	  		create(:review, movie: movie)
	  	end
	end
  end

  
end