require 'spec_helper'

describe "locations/edit.html.erb" do
  before(:each) do
    @location = assign(:location, stub_model(Location,
      :x_coord => 1.5,
      :y_coord => 1.5,
      :description => "MyText",
      :user_id => 1,
      :is_active => false
    ))
  end

  it "renders the edit location form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => locations_path(@location), :method => "post" do
      assert_select "input#location_x_coord", :name => "location[x_coord]"
      assert_select "input#location_y_coord", :name => "location[y_coord]"
      assert_select "textarea#location_description", :name => "location[description]"
      assert_select "input#location_user_id", :name => "location[user_id]"
      assert_select "input#location_is_active", :name => "location[is_active]"
    end
  end
end
