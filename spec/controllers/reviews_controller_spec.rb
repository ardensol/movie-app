require 'spec_helper'
require 'rails_helper'

RSpec.describe ReviewsController, type: :controller do

	let(:review) { FactoryGirl.create(:review)}

	describe '#index' do
		it "successfully hits the index route" do
			get :index
			expect(response).to be_success
		end

		it "shows the index page" do
	      get :index
	      expect(response).to render_template(:index)
	    end
	end
end