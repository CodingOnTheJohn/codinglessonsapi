FactoryBot.define do
  factory :lesson do
    lesson { Faker::Lorem.sentence }
    topic { Faker::Educator.subject}
    link { Faker::Internet.url }
  end
end