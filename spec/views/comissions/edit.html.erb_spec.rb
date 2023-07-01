require 'rails_helper'

RSpec.describe "comissions/edit", type: :view do
  let(:comission) {
    Comission.create!(
      order: nil,
      user: nil,
      amount: 1.5,
      payed: false
    )
  }

  before(:each) do
    assign(:comission, comission)
  end

  it "renders the edit comission form" do
    render

    assert_select "form[action=?][method=?]", comission_path(comission), "post" do

      assert_select "input[name=?]", "comission[order_id]"

      assert_select "input[name=?]", "comission[user_id]"

      assert_select "input[name=?]", "comission[amount]"

      assert_select "input[name=?]", "comission[payed]"
    end
  end
end
