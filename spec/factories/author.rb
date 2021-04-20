FactoryBot.define do
  factory :author do
    first_name { FFaker::Name.name }
    last_name { FFaker::Name.last_name }
  end
end


