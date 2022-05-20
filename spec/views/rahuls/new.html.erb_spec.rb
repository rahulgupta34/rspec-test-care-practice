require 'rails_helper'

RSpec.describe "rahuls/new", type: :view do
  before(:each) do
    assign(:rahul, Rahul.new(
      name: "MyString",
      age: 1
    ))
  end

  it "renders new rahul form" do
    render

    assert_select "form[action=?][method=?]", rahuls_path, "post" do

      assert_select "input[name=?]", "rahul[name]"

      assert_select "input[name=?]", "rahul[age]"
    end
  end
end
