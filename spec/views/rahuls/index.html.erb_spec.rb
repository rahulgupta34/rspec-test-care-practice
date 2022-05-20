require 'rails_helper'

RSpec.describe "rahuls/index", type: :view do
  before(:each) do
    assign(:rahuls, [
      Rahul.create!(
        name: "Name",
        age: 2
      ),
      Rahul.create!(
        name: "Name",
        age: 2
      )
    ])
  end

  it "renders a list of rahuls" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
