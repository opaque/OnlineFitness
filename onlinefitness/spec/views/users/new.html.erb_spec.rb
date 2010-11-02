require 'spec_helper'

describe "/users/new.html.erb" do
  include UsersHelper

  before(:each) do
    assigns[:user] = stub_model(User,
      :new_record? => true,
      :name => "value for name",
      :weight => 1,
      :height => 1,
      :gender => "value for gender"
    )
  end

  it "renders new user form" do
    render

    response.should have_tag("form[action=?][method=post]", users_path) do
      with_tag("input#user_name[name=?]", "user[name]")
      with_tag("input#user_weight[name=?]", "user[weight]")
      with_tag("input#user_height[name=?]", "user[height]")
      with_tag("select#user_gender[name=?]", "user[gender]")
    end
  end
end
