FactoryBot.define do
  factory :center do
    zone { nil }
    country { nil }
    region { nil }
    name { "MyString" }
    address { "MyString" }
    add_address { "MyString" }
    city { "MyString" }
    contact { "MyString" }
    phone { "MyString" }
    add_phone { "MyString" }
    postalcode { 1 }
    mobile { "MyString" }
    add_mobile { "MyString" }
    email { "MyString" }
    add_email { "MyString" }
    web { "MyString" }
    add_web { "MyString" }
    desc { "MyText" }
  end
end
