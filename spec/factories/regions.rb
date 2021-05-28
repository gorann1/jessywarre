FactoryBot.define do
  factory :region do
    zone { nil }
    country { nil }
    name { "MyString" }
    desc { "MyText" }
  end
end
