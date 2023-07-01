require 'rails_helper'

RSpec.describe "clients/show", type: :view do
  before(:each) do
    assign(:client, Client.create!(
      name: "Name",
      document_cpf: "Document Cpf",
      document_cnpj: "Document Cnpj",
      email: "Email",
      date_birth: "Date Birth",
      number: "Number",
      address: "Address"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Document Cpf/)
    expect(rendered).to match(/Document Cnpj/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Date Birth/)
    expect(rendered).to match(/Number/)
    expect(rendered).to match(/Address/)
  end
end
