require 'spec_helper'

describe "/workouts/edit.html.erb" do
  include WorkoutsHelper

  before(:each) do
    assigns[:workout] = @workout = stub_model(Workout,
      :new_record? => false,
      :exercise => "value for exercise",
      :expectedreps => 1,
      :expectedsets => 1,
      :actualreps => 1,
      :actualsets => 1,
      :user_id => 1
    )
  end

  it "renders the edit workout form" do
      pending("routing issues")

    render

    response.should have_tag("form[action=#{user_workouts_path(@user)}][method=post]") do
      with_tag('input#workout_exercise[name=?]', "workout[exercise]")
      with_tag('input#workout_expectedreps[name=?]', "workout[expectedreps]")
      with_tag('input#workout_expectedsets[name=?]', "workout[expectedsets]")
      with_tag('input#workout_actualreps[name=?]', "workout[actualreps]")
      with_tag('input#workout_actualsets[name=?]', "workout[actualsets]")
      with_tag('input#workout_user_id[name=?]', "workout[user_id]")
    end
  end
end
