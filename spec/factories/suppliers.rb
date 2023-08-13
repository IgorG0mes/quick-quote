
FactoryBot.define do
  factory :supplier do
    name { Forgery(:name).company_name }
    document_cnpj { '00123123000112' }
  end
end
