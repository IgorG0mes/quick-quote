require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      name: "MyString",
      document_cpf: "MyString",
      date_birth: "MyString",
      email: "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input[name=?]", "user[name]"

      assert_select "input[name=?]", "user[document_cpf]"

      assert_select "input[name=?]", "user[date_birth]"

      assert_select "input[name=?]", "user[email]"
    end
  end
end
