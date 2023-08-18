
FactoryBot.define do
  factory :supplier do
    name { Faker::Name.name }
    document_cnpj { Faker::Number.number(digits: 14) }
  end
end
