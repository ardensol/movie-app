require 'spec_helper'
require 'rails_helper'

RSpec.describe MovieListsController, type: :controller do

	let(:movie_list) { FactoryGirl.create(:movie_list)}

	describe '#index' do
		it "successfully hits the show route" do
			get :index
			expect(response).to be_success
		end

		it "shows the index page" do
	      get :index
	      expect(response).to render_template(:index)
	    end
	end
end