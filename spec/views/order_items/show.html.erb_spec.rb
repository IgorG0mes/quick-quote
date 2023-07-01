require 'rails_helper'

RSpec.describe "order_items/show", type: :view do
  before(:each) do
    assign(:order_item, OrderItem.create!(
      order: nil,
      product: nil,
      price: 2.5,
      quantity: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3/)
  end
end
