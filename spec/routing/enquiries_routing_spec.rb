require "spec_helper"

describe EnquiriesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/enquiries" }.should route_to(:controller => "enquiries", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/enquiries/new" }.should route_to(:controller => "enquiries", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/enquiries/1" }.should route_to(:controller => "enquiries", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/enquiries/1/edit" }.should route_to(:controller => "enquiries", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/enquiries" }.should route_to(:controller => "enquiries", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/enquiries/1" }.should route_to(:controller => "enquiries", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/enquiries/1" }.should route_to(:controller => "enquiries", :action => "destroy", :id => "1")
    end

  end
end
