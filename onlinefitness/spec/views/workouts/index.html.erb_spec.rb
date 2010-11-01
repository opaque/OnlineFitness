require 'spec_helper'

describe "/workouts/index.html.erb" do
  include WorkoutsHelper

  before(:each) do
    assigns[:workouts] = [
      stub_model(Workout,
        :exercise => "value for exercise",
        :expectedreps => 1,
        :expectedsets => 1,
        :actualreps => 1,
        :actualsets => 1,
        :user_id => 1
      ),
      stub_model(Workout,
        :exercise => "value for exercise",
        :expectedreps => 1,
        :expectedsets => 1,
        :actualreps => 1,
        :actualsets => 1,
        :user_id => 1
      )
    ]
  end

  it "renders a list of workouts" do
    render
    response.should have_tag("tr>td", "value for exercise".to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
  end
end
