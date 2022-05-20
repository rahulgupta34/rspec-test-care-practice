require "rails_helper"

RSpec.describe FactorialController, :type => :controller do
  describe "GET index" do
    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end

    it "has factorial calculation" do
        get :fact_no
        expect(response.status).to eq(200)
    end
  end

  describe "get the fact answer and sum " do
    let(:fact) { Factorial.new }
    it "factorial answer" do
       expect(fact.fact_cal(5)).to eq(120)
       expect(fact.sum(2,3)).to eq(5)
    end
  end
end