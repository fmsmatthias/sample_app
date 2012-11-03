require "spec_helper"

describe StatusvaluesController do
  describe "routing" do

    it "routes to #index" do
      get("/statusvalues").should route_to("statusvalues#index")
    end

    it "routes to #new" do
      get("/statusvalues/new").should route_to("statusvalues#new")
    end

    it "routes to #show" do
      get("/statusvalues/1").should route_to("statusvalues#show", :id => "1")
    end

    it "routes to #edit" do
      get("/statusvalues/1/edit").should route_to("statusvalues#edit", :id => "1")
    end

    it "routes to #create" do
      post("/statusvalues").should route_to("statusvalues#create")
    end

    it "routes to #update" do
      put("/statusvalues/1").should route_to("statusvalues#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/statusvalues/1").should route_to("statusvalues#destroy", :id => "1")
    end

  end
end
