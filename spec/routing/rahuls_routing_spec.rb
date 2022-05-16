require "rails_helper"

RSpec.describe RahulsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/rahuls").to route_to("rahuls#index")
    end

    it "routes to #new" do
      expect(get: "/rahuls/new").to route_to("rahuls#new")
    end

    it "routes to #show" do
      expect(get: "/rahuls/1").to route_to("rahuls#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/rahuls/1/edit").to route_to("rahuls#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/rahuls").to route_to("rahuls#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/rahuls/1").to route_to("rahuls#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/rahuls/1").to route_to("rahuls#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/rahuls/1").to route_to("rahuls#destroy", id: "1")
    end
  end
end
