require 'rails_helper'

RSpec.describe "suppliers/new", type: :view do
  before(:each) do
    assign(:supplier, Supplier.new(
      name: "MyString",
      business_name: "MyString",
      document_cnpj: "MyString",
      address: "MyString",
      phone_number: "MyString",
      email: "MyString",
      website: "MyString",
      observation: "MyString"
    ))
  end

  it "renders new supplier form" do
    render

    assert_select "form[action=?][method=?]", suppliers_path, "post" do

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
