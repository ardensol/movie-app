require 'rails_helper'

RSpec.describe Review, type: :model do
  describe 'instantiation' do

	  let!(:review) { FactoryGirl.create(:review) }

	  it 'instantiates movie review' do

	  	expect(review.class.name).to eq('Review')

	  end

	  it 'should have a created_at date' do
	  	expect(review.created_at).to be 
	  end

   end

   describe 'validations' do

   	 it 'should be invalid with an unformatted email' do
   	 	review =  FactoryGirl.build(:review, user_email: "foo")
   	 	expect(review).to be_invalid
   	 end

   	 it 'should be valid with a formatted email' do
   	 	review =  FactoryGirl.build(:review, user_email: "foo@bar.com")
   	 	expect(review).to be_valid
   	 end

   	 it 'should be invalid without an email' do
   	 	review =  FactoryGirl.build(:review, user_email: "")
   	 	expect(review).to be_invalid
   	 end

   	 it 'should be invalid without a rating' do
   	 	review =  FactoryGirl.build(:review, rating: "")
   	 	expect(review).to be_invalid
   	 end	

   end

end
