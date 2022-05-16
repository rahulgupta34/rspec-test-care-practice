require 'rails_helper'

RSpec.describe "rahuls/show", type: :view do
  before(:each) do
    @rahul = assign(:rahul, Rahul.create!(
      name: "Name",
      age: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
  end
end
