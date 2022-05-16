require 'rails_helper'

RSpec.describe "rahuls/edit", type: :view do
  before(:each) do
    @rahul = assign(:rahul, Rahul.create!(
      name: "MyString",
      age: 1
    ))
  end

  it "renders the edit rahul form" do
    render

    assert_select "form[action=?][method=?]", rahul_path(@rahul), "post" do

      assert_select "input[name=?]", "rahul[name]"

      assert_select "input[name=?]", "rahul[age]"
    end
  end
end
