require 'rails_helper'

RSpec.describe "settings/index", type: :view do
  before(:each) do
    assign(:settings, [
      Setting.create!(
        key: "Key",
        value: "Value"
      ),
      Setting.create!(
        key: "Key",
        value: "Value"
      )
    ])
  end

  it "renders a list of settings" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Key".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Value".to_s), count: 2
  end
end
