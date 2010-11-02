require 'spec_helper'

describe WorkoutsController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/users/1/workouts" }.should route_to(:controller => "workouts", :action => "index", :user_id => "1")
    end

    it "recognizes and generates #new" do
      { :get => "/users/1/workouts/new" }.should route_to(:controller => "workouts", :action => "new", :user_id => "1")
    end

    it "recognizes and generates #show" do
      { :get => "/users/1/workouts/1" }.should route_to(:controller => "workouts", :action => "show", :id => "1", :user_id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/users/1/workouts/1/edit" }.should route_to(:controller => "workouts", :action => "edit", :id => "1", :user_id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/users/1/workouts" }.should route_to(:controller => "workouts", :action => "create", :user_id => "1") 
    end

    it "recognizes and generates #update" do
      { :put => "/users/1/workouts/1" }.should route_to(:controller => "workouts", :action => "update", :id => "1", :user_id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/users/1/workouts/1" }.should route_to(:controller => "workouts", :action => "destroy", :id => "1", :user_id => "1") 
    end
  end
end
