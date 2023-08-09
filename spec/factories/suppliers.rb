
FactoryBot.define do
  factory :supplier do
    name { Forgery(:name).full_name }
    document_cnpj { Forgery(:basic).text }
  end
end
