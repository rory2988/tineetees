FactoryGirl.define do
  factory :product do
    name { Faker::Name.name } 
    description { Faker::Lorem.sentence }
    image "http://placekitten.com/200/200"
    price { Faker::Number.number(3) }
    sold 0
    on_hand 0
    on_order { Faker::Number.number(2) }
  end
end