FactoryBot.define do
  factory :center do
    address  { Faker::Address.full_address }
    lat  { Faker::Address.latitude }
    lng  { Faker::Address.longitude }
    email { Faker::Internet.email }
    phone { Faker::PhoneNumber.phone_number }
    website { Faker::Internet.url }
  end
end
