FactoryBot.define do
  factory :residence do
    title { "MyString" }
    description { "MyText" }
    available { false }
    unit { 1 }
    rent { 1.5 }
  end
end
