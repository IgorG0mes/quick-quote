require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  let(:user) {
    User.create!(
      name: "MyString",
      document_cpf: "MyString",
      date_birth: "MyString",
      email: "MyString"
    )
  }

  before(:each) do
    assign(:user, user)
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(user), "post" do

      assert_select "input[name=?]", "user[name]"

      assert_select "input[name=?]", "user[document_cpf]"

      assert_select "input[name=?]", "user[date_birth]"

      assert_select "input[name=?]", "user[email]"
    end
  end
end
