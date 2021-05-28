FactoryBot.define do
  factory :location do
    zone { nil }
    country { nil }
    region { nil }
    category { nil }
    type { nil }
    name { "MyString" }
    lat { "9.99" }
    lng { "9.99" }
    mindepth { 1 }
    maxdepth { 1 }
    visibility { "MyString" }
    currents { "MyString" }
    is_spec { false }
    desc { "MyText" }
  end
end
