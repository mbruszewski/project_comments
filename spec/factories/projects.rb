FactoryBot.define do
  factory :project do
    author { Faker::Name.name }
    name { Faker::Coffee.blend_name }
    start_date { Faker::Time.between(from: DateTime.now - 1, to: DateTime.now) }
    end_date { Faker::Time.between(from: DateTime.now, to: DateTime.now + 1) }
  end
end
