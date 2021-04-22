FactoryBot.define do
  MAX_PRICE = 100.0
  MAX_LENGTH = 40.0
  MAX_WIDTH = 20.0
  MAX_HEIGHT = 5.0

  PRICE_DECIMALS = 2
  MEASUREMENTS_DECIMALS = 1
  IMAGES_COUNT = 4

  factory :book do
    images { Array.new(IMAGES_COUNT){FFaker::Image.url} }
    title { FFaker::Name.name }
    materials { FFaker::Name.name }
    publish_year { FFaker::Time.date }
    price { FFaker::Random.rand(MAX_PRICE).floor(PRICE_DECIMALS) }
    length { FFaker::Random.rand(MAX_LENGTH).floor(MEASUREMENTS_DECIMALS) }
    width { FFaker::Random.rand(MAX_WIDTH).floor(MEASUREMENTS_DECIMALS) }
    height { FFaker::Random.rand(MAX_HEIGHT).floor(MEASUREMENTS_DECIMALS) }
    description { FFaker::BaconIpsum.sentence }
    category { create(:category) }
    authors { [ create(:author) ] }
  end
end
