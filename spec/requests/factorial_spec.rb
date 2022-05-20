require 'rails_helper'

RSpec.describe "Factorials", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get root_path
      expect(response.status).to eq(200)
    end
  end

end
