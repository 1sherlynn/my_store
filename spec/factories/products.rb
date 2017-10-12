FactoryGirl.define do
  factory :product do
  	sequence(:title) { |n| "title#{n}" }
  	sequence(:avatar) { |n| "avatar#{n}" }
  	sequence(:description) { |n| "description#{n}" }
  	sequence(:price) { |n| "#{n}" }
   
  end
end

