require 'spec_helper'

describe "/workouts/new.html.erb" do
  include WorkoutsHelper

  before(:each) do
    assigns[:workout] = stub_model(Workout,
      :new_record? => true,
      :exercise => "value for exercise",
      :expectedreps => 1,
      :expectedsets => 1,
      :actualreps => 1,
      :actualsets => 1,
      :user_id => 1
    )
  end

  it "renders new workout form" do
    pending("routing issues")
    render

    response.should have_tag("form[action=?][method=post]", workouts_path) do
      with_tag("input#workout_exercise[name=?]", "workout[exercise]")
      with_tag("input#workout_expectedreps[name=?]", "workout[expectedreps]")
      with_tag("input#workout_expectedsets[name=?]", "workout[expectedsets]")
      with_tag("input#workout_actualreps[name=?]", "workout[actualreps]")
      with_tag("input#workout_actualsets[name=?]", "workout[actualsets]")
      with_tag("input#workout_user_id[name=?]", "workout[user_id]")
    end
  end
end
