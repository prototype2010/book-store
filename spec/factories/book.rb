FactoryBot.define do
  factory :book do
    photo_url { FFaker::Image.url }
    title { FFaker::Name.name }
    price { 1.111111 }
    description { FFaker::BaconIpsum.sentence }
    category { create(:category) }
    authors { [ create(:author) ] }
  end
end
