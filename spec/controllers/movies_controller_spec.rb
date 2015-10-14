require 'spec_helper'
require 'rails_helper'

RSpec.describe MoviesController, type: :controller do

	let(:movie_with_review) { FactoryGirl.create(:movie_with_review)}

	describe '#show' do
		it "successfully hits the show route" do
			get :show, id: movie_with_review.id
			expect(response).to be_success
		end
	end
end