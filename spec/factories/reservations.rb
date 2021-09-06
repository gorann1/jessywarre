FactoryBot.define do
  factory :reservation do
    user { nil }
    center { nil }
    location { nil }
    start_date { "2021-07-09 11:59:37" }
    end_date { "2021-07-09 11:59:37" }
    price { 1 }
    total { 1 }
  end
end
