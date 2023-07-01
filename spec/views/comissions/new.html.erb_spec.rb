require 'rails_helper'

RSpec.describe "comissions/new", type: :view do
  before(:each) do
    assign(:comission, Comission.new(
      order: nil,
      user: nil,
      amount: 1.5,
      payed: false
    ))
  end

  it "renders new comission form" do
    render

    assert_select "form[action=?][method=?]", comissions_path, "post" do

      assert_select "input[name=?]", "comission[order_id]"

      assert_select "input[name=?]", "comission[user_id]"

      assert_select "input[name=?]", "comission[amount]"

      assert_select "input[name=?]", "comission[payed]"
    end
  end
end
