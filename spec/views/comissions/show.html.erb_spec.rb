require 'rails_helper'

RSpec.describe "comissions/show", type: :view do
  before(:each) do
    assign(:comission, Comission.create!(
      order: nil,
      user: nil,
      amount: 2.5,
      payed: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/false/)
  end
end
