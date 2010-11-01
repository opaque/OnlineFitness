require 'spec_helper'

describe Workout do


  before(:each) do
  
	@valid_user_attributes = {
      :name => "value for name",
      :birthday => Time.now,
      :weight => 1,
      :height => 1,
      :gender => "value for gender"
    }
	
	@user = User.create!(@valid_user_attributes)
  
    @valid_attributes = {
      :date => Time.now,
      :exercise => "value for exercise",
      :expectedreps => 1,
      :expectedsets => 1,
      :actualreps => 1,
      :actualsets => 1
    }
	@null_expectedreps_attr  = {
		:date => Time.now,
		:exercise => "value for exercise",
		:expectedreps => nil,
		:expectedsets => 1,
	}
	@valid_attr_without_actual_data = {
		:date => Time.now,
		:exercise => "value for exercise",
		:expectedreps => 1,
		:expectedsets => 1,
	}
	@null_date_attr  = {
		:date => nil,
		:exercise => "value for exercise",
		:expectedreps => 1,
		:expectedsets => 1,
	}
	
	@invalid_expectedreps_attr  = {
		:date => nil,
		:exercise => "value for exercise",
		:expectedreps => "invalid argument",
		:expectedsets => 1,
	}
	@invalid_actualsets_attr = {
      :date => Time.now,
      :exercise => "value for exercise",
      :expectedreps => 1,
      :expectedsets => 1,
      :actualreps => "error",
      :actualsets => 1
    }
  end

  it "should create a new instance given valid attributes" do
    @workout = @user.workouts.build(@valid_attributes)
	@workout.should be_valid
  end
  
  
	
	describe "when creating a workout" do

		it "should create a new workout without actualsets and actualreps" do
			@workout = @user.workouts.build(@valid_attr_without_actual_data)
			@workout.should be_valid
		end
		
		it "should NOT create a new workout without a date" do	
			@workout = @user.workouts.build(@null_date_attr)
			@workout.should_not be_valid
		end
		
		it "should flash a notice saying 'Arguments are invalid' when a it fails to create a new workout"
		
		it "should NOT create a new workout without an expected reps argument" do
			@workout = @user.workouts.build(@null_expectedreps_attr)
			@workout.should_not be_valid
		end
		
		it "should NOT create a new workout when given an invalid expected reps argument" do
			@workout = @user.workouts.build(@invlaid_expectedreps_attr)
			@workout.should_not be_valid
		end
	end
	
	describe "when updating a workout" do
		
		it "should update the movie when given actual data" do
			@workout = @user.workouts.build(@valid_attr_without_actual_data)
			@workout.update_attributes(@valid_attributes)
			(@workout.actualsets == @valid_attributes.actualsets and @workout.actualreps == @valid_attributes.actualreps).should be_true
		end
		
		it "should update the movie when not given data for actualreps and actualsets" do
			@workout = @user.workouts.build(@valid_attr_without_actual_data)
			@workout.update_attributes(@valid_attr_without_actual_data)
			@workout.should be_valid
		end
		
		it "should flash a notice saying 'Arguments are invalid' when an update fails"
		
		it "should not update when the movie is updated with invalid data" do
			@workout = @user.workouts.build(@invalid_expectedreps_attr)
			@workout.should_not be_valid
		end
		
		it "should not update when the movie is updated with invalid actual data in actualreps" do
			@workout = @user.workouts.build(@invalid_actualsets_attr)
			@workout.should_not be_valid
		end
		
	end
	
	
 
end
