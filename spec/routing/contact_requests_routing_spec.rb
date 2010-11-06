require "spec_helper"

describe ContactRequestsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/contact_requests" }.should route_to(:controller => "contact_requests", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/contact_requests/new" }.should route_to(:controller => "contact_requests", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/contact_requests/1" }.should route_to(:controller => "contact_requests", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/contact_requests/1/edit" }.should route_to(:controller => "contact_requests", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/contact_requests" }.should route_to(:controller => "contact_requests", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/contact_requests/1" }.should route_to(:controller => "contact_requests", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/contact_requests/1" }.should route_to(:controller => "contact_requests", :action => "destroy", :id => "1")
    end

  end
end
