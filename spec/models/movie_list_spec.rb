require 'rails_helper'

RSpec.describe MovieList, type: :model do
  	describe 'instantiation' do

	  let!(:movie_list) { FactoryGirl.create(:movie_list)}

	  it 'instantiates movie list' do

	  	expect(movie_list.class.name).to eq('MovieList')

	  end
	end

end
