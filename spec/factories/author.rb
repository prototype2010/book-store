FactoryBot.define do
  factory :author do
    name { FFaker::Name.name }
    biography { FFaker::BaconIpsum.sentence }
  end
end


