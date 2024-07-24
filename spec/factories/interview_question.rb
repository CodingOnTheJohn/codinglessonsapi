FactoryBot.define do
  factory :interview_question do
    question { Faker::Lorem.sentence }
    topic { Faker::Educator.subject}
    link { Faker::Internet.url }
  end
end