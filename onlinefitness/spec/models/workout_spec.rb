require 'spec_helper'

describe Workout do
  before(:each) do
    @valid_attributes = {
      :date => Time.now,
      :exercise => "value for exercise",
      :expectedreps => 1,
      :expectedsets => 1,
      :actualreps => 1,
      :actualsets => 1
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
  end

  it "should create a new instance given valid attributes" do
    Workout.create!(@valid_attributes).should be_true
	
  end
  
  
	
	describe "when creating a workout" do

		it "should create a new movie without actualsets and actualreps" do
			Workout.create!(@valid_attr_without_actual_data).should be_true
		end
		
		it "should NOT create a new movie without a date" do	
			Workout.create!(@null_date_attr).should be_true
		end
	end
	
	describe "when updating a workout" do
		
		it "should update the movie when given actual data" do
			
			@workout = Workout.create!(@valid_attr_without_actual_data)
			@workout.update_attributes(@valid_attributes)
			(@workout.actualsets == @valid_attributes.actualsets and @workout.actualreps == @valid_attributes.actualreps).should be_true
		end
		
		
	end
	
	
 
end
