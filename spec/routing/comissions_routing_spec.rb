require "rails_helper"

RSpec.describe ComissionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/comissions").to route_to("comissions#index")
    end

    it "routes to #new" do
      expect(get: "/comissions/new").to route_to("comissions#new")
    end

    it "routes to #show" do
      expect(get: "/comissions/1").to route_to("comissions#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/comissions/1/edit").to route_to("comissions#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/comissions").to route_to("comissions#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/comissions/1").to route_to("comissions#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/comissions/1").to route_to("comissions#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/comissions/1").to route_to("comissions#destroy", id: "1")
    end
  end
end
