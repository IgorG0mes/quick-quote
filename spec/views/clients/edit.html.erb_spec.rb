require 'rails_helper'

RSpec.describe "clients/edit", type: :view do
  let(:client) {
    Client.create!(
      name: "MyString",
      document_cpf: "MyString",
      document_cnpj: "MyString",
      email: "MyString",
      date_birth: "MyString",
      number: "MyString",
      address: "MyString"
    )
  }

  before(:each) do
    assign(:client, client)
  end

  it "renders the edit client form" do
    render

    assert_select "form[action=?][method=?]", client_path(client), "post" do

      assert_select "input[name=?]", "client[name]"

      assert_select "input[name=?]", "client[document_cpf]"

      assert_select "input[name=?]", "client[document_cnpj]"

      assert_select "input[name=?]", "client[email]"

      assert_select "input[name=?]", "client[date_birth]"

      assert_select "input[name=?]", "client[number]"

      assert_select "input[name=?]", "client[address]"
    end
  end
end
