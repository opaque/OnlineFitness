require 'spec_helper'

describe WorkoutsController do

  def mock_workout(stubs={})
    @mock_workout ||= mock_model(Workout, stubs)
  end

  describe "GET index" do
    it "assigns all workouts as @workouts" do


      Workout.stub(:find).with(:all).and_return([mock_workout])
      get :index
      assigns[:workouts].should == [mock_workout]
    end
  end

  describe "GET show" do
    it "assigns the requested workout as @workout" do
      Workout.stub(:find).with("37").and_return(mock_workout)
      get :show, :id => "37"
      assigns[:workout].should equal(mock_workout)
    end
  end

  describe "GET new" do
    it "assigns a new workout as @workout" do
	  pending("routing issues")

      Workout.stub(:new).and_return(mock_workout)
      get :new
      assigns[:workout].should equal(mock_workout)
    end
  end

  describe "GET edit" do
    it "assigns the requested workout as @workout" do
	    pending("routing issues")

      Workout.stub(:find).with("37").and_return(mock_workout)
      get :edit, :id => "37"
      assigns[:workout].should equal(mock_workout)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created workout as @workout" do
	      pending("routing issues")

        Workout.stub(:new).with({'these' => 'params'}).and_return(mock_workout(:save => true))
        post :create, :workout => {:these => 'params'}
        assigns[:workout].should equal(mock_workout)
      end

      it "redirects to the created workout" do
	      pending("routing issues")

        Workout.stub(:new).and_return(mock_workout(:save => true))
        post :create, :workout => {}
        response.should redirect_to(workout_url(mock_workout))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved workout as @workout" do
	      pending("routing issues")

        Workout.stub(:new).with({'these' => 'params'}).and_return(mock_workout(:save => false))
        post :create, :workout => {:these => 'params'}
        assigns[:workout].should equal(mock_workout)
      end

      it "re-renders the 'new' template" do
	      pending("routing issues")

        Workout.stub(:new).and_return(mock_workout(:save => false))
        post :create, :workout => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested workout" do
	      pending("routing issues")

        Workout.should_receive(:find).with("37").and_return(mock_workout)
        mock_workout.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :workout => {:these => 'params'}
      end

      it "assigns the requested workout as @workout" do
	      pending("routing issues")

        Workout.stub(:find).and_return(mock_workout(:update_attributes => true))
        put :update, :id => "1"
        assigns[:workout].should equal(mock_workout)
      end

      it "redirects to the workout" do
	      pending("routing issues")

        Workout.stub(:find).and_return(mock_workout(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(workout_url(mock_workout))
      end
    end

    describe "with invalid params" do
      it "updates the requested workout" do
	      pending("routing issues")

        Workout.should_receive(:find).with("37").and_return(mock_workout)
        mock_workout.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :workout => {:these => 'params'}
      end

      it "assigns the workout as @workout" do
	      pending("routing issues")

        Workout.stub(:find).and_return(mock_workout(:update_attributes => false))
        put :update, :id => "1"
        assigns[:workout].should equal(mock_workout)
      end

      it "re-renders the 'edit' template" do
	      pending("routing issues")

        Workout.stub(:find).and_return(mock_workout(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested workout" do
	    pending("routing issues")

      Workout.should_receive(:find).with("37").and_return(mock_workout)
      mock_workout.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the workouts list" do
	    pending("routing issues")

      Workout.stub(:find).and_return(mock_workout(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(workouts_url)
    end
  end

end
