require 'rails_helper'

RSpec.describe "suppliers/show", type: :view do
  before(:each) do
    assign(:supplier, Supplier.create!(
      name: "Name",
      business_name: "Business Name",
      document_cnpj: "Document Cnpj",
      address: "Address",
      phone_number: "Phone Number",
      email: "Email",
      website: "Website",
      observation: "Observation"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Business Name/)
    expect(rendered).to match(/Document Cnpj/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Phone Number/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Website/)
    expect(rendered).to match(/Observation/)
  end
end
