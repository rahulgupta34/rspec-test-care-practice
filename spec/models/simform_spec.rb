require 'rails_helper'

RSpec.describe Simform, :type => :model do
  let(:sim_obj) { create :simform, name:"rahul gupta", email: "sim@gmail.com" }

  it "name can't be empty" do
    expect(sim_obj).to be_valid
  end

  it "password should be present" do 
    expect(sim_obj).to be_valid
  end

  it "email should be present" do 
    expect(sim_obj).to be_valid
  end

  it "email should be unique" do 
   user1 =  Simform.create(name:"abc",email:"sim1@gmail.com",password: "abcas")
  
    expect(sim_obj.email).not_to eq(user1.email)
  end

  it"check attribute posibility " do
    expect(sim_obj).to have_attribute("email")
  end

  it "is practice test case" do
    expect(3).to be >= 1
  end

  it "compares values to actual and expect" do
    expect(5).to be_between(1,5)
  end

  it "check string posibility" do 
    expect("rahul gupta").to end_with("a")
  end

end
