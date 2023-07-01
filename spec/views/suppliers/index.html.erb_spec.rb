require 'rails_helper'

RSpec.describe "suppliers/index", type: :view do
  before(:each) do
    assign(:suppliers, [
      Supplier.create!(
        name: "Name",
        business_name: "Business Name",
        document_cnpj: "Document Cnpj",
        address: "Address",
        phone_number: "Phone Number",
        email: "Email",
        website: "Website",
        observation: "Observation"
      ),
      Supplier.create!(
        name: "Name",
        business_name: "Business Name",
        document_cnpj: "Document Cnpj",
        address: "Address",
        phone_number: "Phone Number",
        email: "Email",
        website: "Website",
        observation: "Observation"
      )
    ])
  end

  it "renders a list of suppliers" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Business Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Document Cnpj".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Address".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Phone Number".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Email".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Website".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Observation".to_s), count: 2
  end
end
