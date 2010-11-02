class WorkoutsController < ApplicationController

  before_filter :get_user
  
  def get_user
	@user = User.create(:id =>"1")
  end

  # GET /workouts
  # GET /workouts.xml
  def index
    @workouts = @user.workouts

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @workouts }
    end
  end
  


  # GET /workouts/1
  # GET /workouts/1.xml
  def show
    @workout = @user.workouts.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @workout }
    end
  end

  # GET /workouts/new
  # GET /workouts/new.xml
  def new
    @workout = @user.workouts.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @workout }
    end
  end

  # GET /workouts/1/edit
  def edit
    @workout = @user.workouts.find(params[:id])
  end

  # POST /workouts
  # POST /workouts.xml
  def create
    @workout = @user.workouts.build(params[:workout])

    respond_to do |format|
      if @workout.save
        format.html { redirect_to(calendar_path(@user), :notice => 'Workout was successfully created.') }
        format.xml  { render :xml => @workout, :status => :created, :location => @workout }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @workout.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /workouts/1
  # PUT /workouts/1.xml
  def update
    @workout = @user.workouts.find(params[:id])

    respond_to do |format|
      if @workout.update_attributes(params[:workout])
        format.html { redirect_to([@user, @workout], :notice => 'Workout was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @workout.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /workouts/1
  # DELETE /workouts/1.xml
  def destroy
    @workout = @user.workouts.find(params[:id])
    @workout.destroy

    respond_to do |format|
      format.html { redirect_to(user_workouts_path(@user), :notice => 'Workout was successfully removed.') }
      format.xml  { head :ok }
    end
  end
end
