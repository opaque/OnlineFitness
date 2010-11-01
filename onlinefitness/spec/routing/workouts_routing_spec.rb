require 'spec_helper'

describe WorkoutsController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/workouts" }.should route_to(:controller => "workouts", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/workouts/new" }.should route_to(:controller => "workouts", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/workouts/1" }.should route_to(:controller => "workouts", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/workouts/1/edit" }.should route_to(:controller => "workouts", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/workouts" }.should route_to(:controller => "workouts", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/workouts/1" }.should route_to(:controller => "workouts", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/workouts/1" }.should route_to(:controller => "workouts", :action => "destroy", :id => "1") 
    end
  end
end
