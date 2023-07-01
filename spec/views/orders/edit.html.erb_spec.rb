require 'rails_helper'

RSpec.describe "orders/edit", type: :view do
  let(:order) {
    Order.create!(
      labor_price: 1.5,
      amount: 1.5,
      user: nil,
      client: nil
    )
  }

  before(:each) do
    assign(:order, order)
  end

  it "renders the edit order form" do
    render

    assert_select "form[action=?][method=?]", order_path(order), "post" do

      assert_select "input[name=?]", "order[labor_price]"

      assert_select "input[name=?]", "order[amount]"

      assert_select "input[name=?]", "order[user_id]"

      assert_select "input[name=?]", "order[client_id]"
    end
  end
end
