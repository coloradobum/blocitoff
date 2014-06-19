FactoryGirl.define do
  factory :user do
   email 'tester@test.com'
   password 'password'
   password_confirmation 'password'

   trait :confirmed do
   	 confirmed_at DateTime.now
	 end
  end
end
