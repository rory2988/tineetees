FactoryGirl.define do
  factory :product do
    name { Faker::Name.name } 
    description { Faker::Lorem.sentence }
    image "http://placekitten.com/200/200"
    price { 400 }
    sold 0
    on_hand 0
    on_order { 10 }
  end
end