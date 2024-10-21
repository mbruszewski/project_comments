FactoryBot.define do
  factory :comment do
    author { Faker::Name.name }
    body { Faker::Quote.yoda }
    commentable { nil }
  end
end
