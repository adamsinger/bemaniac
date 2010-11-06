require "spec_helper"

describe MixesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/mixes" }.should route_to(:controller => "mixes", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/mixes/new" }.should route_to(:controller => "mixes", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/mixes/1" }.should route_to(:controller => "mixes", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/mixes/1/edit" }.should route_to(:controller => "mixes", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/mixes" }.should route_to(:controller => "mixes", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/mixes/1" }.should route_to(:controller => "mixes", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/mixes/1" }.should route_to(:controller => "mixes", :action => "destroy", :id => "1")
    end

  end
end
