require 'rails_helper'

RSpec.describe Review, type: :model do
  describe 'instantiation' do

	  let!(:review) { FactoryGirl.create(:review) }

	  it 'instantiates movie review' do

	  	expect(review.class.name).to eq('Review')

	  end
	end

end
