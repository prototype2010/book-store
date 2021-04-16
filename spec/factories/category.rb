FactoryBot.define do
  factory :category do
    name { FFaker::Name.name }
    description { FFaker::BaconIpsum.sentence }
  end
end


