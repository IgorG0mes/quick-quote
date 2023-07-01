require 'rails_helper'

RSpec.describe "clients/index", type: :view do
  before(:each) do
    assign(:clients, [
      Client.create!(
        name: "Name",
        document_cpf: "Document Cpf",
        document_cnpj: "Document Cnpj",
        email: "Email",
        date_birth: "Date Birth",
        number: "Number",
        address: "Address"
      ),
      Client.create!(
        name: "Name",
        document_cpf: "Document Cpf",
        document_cnpj: "Document Cnpj",
        email: "Email",
        date_birth: "Date Birth",
        number: "Number",
        address: "Address"
      )
    ])
  end

  it "renders a list of clients" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Document Cpf".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Document Cnpj".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Email".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Date Birth".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Number".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Address".to_s), count: 2
  end
end
