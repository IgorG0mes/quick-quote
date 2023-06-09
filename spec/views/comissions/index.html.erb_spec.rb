require 'rails_helper'

RSpec.describe "comissions/index", type: :view do
  before(:each) do
    assign(:comissions, [
      Comission.create!(
        order: nil,
        user: nil,
        amount: 2.5,
        payed: false
      ),
      Comission.create!(
        order: nil,
        user: nil,
        amount: 2.5,
        payed: false
      )
    ])
  end

  it "renders a list of comissions" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
  end
end
