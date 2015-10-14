FactoryGirl.define do
  factory :review do
  	rating 5.5
  	comment "blah blah"
  	user_email "this@this.com"
  	created_at Time.now
  end
end