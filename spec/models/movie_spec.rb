require 'rails_helper'

RSpec.describe Movie, type: :model do
  	describe 'instantiation' do

	  let!(:movie) { FactoryGirl.create(:movie)}

	  it 'instantiates movie' do

	  	expect(movie.class.name).to eq('Movie')

	  end
	end

end
