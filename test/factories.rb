FactoryGirl.define do

	factory :user do
		sequence :email do |n|
			"useremail#{n}@gmail.com"
		end
		password "password"
	end

	factory :place do
		name "Best Place"
		description "The Best Place Ever!"
		address "123 Best Place, Santa Barbara, CA 12345"
		latitude(42.3631519)
		longitude(-71.056098)
		association :user
	end


	factory :comment do
		message "This place is great"
		rating "5_stars"
		association :user
		association :place
	end
end

	

