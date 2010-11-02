require 'spec_helper'
require 'active_record'

describe User do
  before(:each) do
    @valid_attributes = {
      :name => "Bob Dylan",
      :birthday => "January 1, 2010",
      :weight => 1,
      :height => 1,
      :gender => "Male"
    }
	
	@valid_profile = {
	  :name => "Bob Dylan"
	}
	
	@invalid_profile = {
	  :name => nil,
	  :birthday => "January 1, 2010",
      :weight => 1,
      :height => 1,
      :gender => "Male"
	}
	
	@edited_profile = {
	  :weight => 30,
	  :height => 50,
	  :gender => "Female"
	}
	@complete_workout = {
      :date => Time.now,
      :exercise => "value for exercise",
      :expectedreps => 1,
      :expectedsets => 1,
      :actualreps => 1,
      :actualsets => 1
	}
  end

  it "should create a new instance given valid attributes" do
    User.create!(@valid_attributes)
  end
  
  describe "when creating a profile " do
    it "should create a full profile" do
	  @profile = User.create(@valid_attributes)
	  @profile.should be_valid
	end
	it "should create an incomplete profile" do
	  @profile = User.create(@valid_profile)
	  @profile.should be_valid
	end
	it "shouldn't create a profile" do
	  @profile = User.create(@invalid_profile)
	  @profile.should_not be_valid
	end
  end
  
  describe "when editing a profile" do
    it "should correctly edit a complete profile" do
	  @profile = User.create(@valid_attributes)
	  @profile.update_attributes(@edited_profile)
	  (@profile[:weight] == @edited_profile[:weight] and @profile[:height] == @edited_profile[:height] and @profile[:gender] == @edited_profile[:gender]).should be_true
	end 
	it "should correctly edit a partial profile" do
	  @profile = User.create(@valid_profile)
	  @profile.update_attributes(@edited_profile)
	  (@profile[:weight] == @edited_profile[:weight] and @profile[:height] == @edited_profile[:height] and @profile[:gender] == @edited_profile[:gender]).should be_true
	end
  end
  
  describe "when deleting a user" do
    it "should destroy user's workouts when user is destroyed" do   
      @profile = User.create(@valid_attributes)
      @workout = @profile.workouts.create(@complete_workout)
      workout_id = @profile.workouts[0].id
      @profile.destroy
	  lambda { Workout.find(workout_id) }.should raise_error(ActiveRecord::RecordNotFound)
	end
end
end
