require 'spec_helper'
require 'rails_helper'

RSpec.describe MoviesController, type: :controller do

	let(:movie) { FactoryGirl.create(:movie)}

	describe '#show' do
		it "successfully hits the show route" do
			get :show, id: movie.id
			expect(response).to be_success
		end
	end
end