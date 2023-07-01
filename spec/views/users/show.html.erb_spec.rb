require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    assign(:user, User.create!(
      name: "Name",
      document_cpf: "Document Cpf",
      date_birth: "Date Birth",
      email: "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Document Cpf/)
    expect(rendered).to match(/Date Birth/)
    expect(rendered).to match(/Email/)
  end
end
