require 'spec_helper'

describe "/users/index.html.erb" do
  include UsersHelper

  before(:each) do
    assigns[:users] = [
      stub_model(User,
        :name => "value for name",
        :weight => 1,
        :height => 1,
        :gender => "value for gender"
      ),
      stub_model(User,
        :name => "value for name",
        :weight => 1,
        :height => 1,
        :gender => "value for gender"
      )
    ]
  end

  it "renders a list of users" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", "value for gender".to_s, 2)
  end
end
