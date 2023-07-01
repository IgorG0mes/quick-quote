require 'rails_helper'

RSpec.describe "suppliers/edit", type: :view do
  let(:supplier) {
    Supplier.create!(
      name: "MyString",
      business_name: "MyString",
      document_cnpj: "MyString",
      address: "MyString",
      phone_number: "MyString",
      email: "MyString",
      website: "MyString",
      observation: "MyString"
    )
  }

  before(:each) do
    assign(:supplier, supplier)
  end

  it "renders the edit supplier form" do
    render

    assert_select "form[action=?][method=?]", supplier_path(supplier), "post" do

      assert_select "input[name=?]", "supplier[name]"

      assert_select "input[name=?]", "supplier[business_name]"

      assert_select "input[name=?]", "supplier[document_cnpj]"

      assert_select "input[name=?]", "supplier[address]"

      assert_select "input[name=?]", "supplier[phone_number]"

      assert_select "input[name=?]", "supplier[email]"

      assert_select "input[name=?]", "supplier[website]"

      assert_select "input[name=?]", "supplier[observation]"
    end
  end
end
