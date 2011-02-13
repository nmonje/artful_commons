require 'spec_helper'

describe "works/new.html.erb" do
  before(:each) do
    assign(:work, stub_model(Work,
      :title => "MyString",
      :description => "MyText",
      :sketch => "MyString",
      :artist_id => 1,
      :is_real => false
    ).as_new_record)
  end

  it "renders new work form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => works_path, :method => "post" do
      assert_select "input#work_title", :name => "work[title]"
      assert_select "textarea#work_description", :name => "work[description]"
      assert_select "input#work_sketch", :name => "work[sketch]"
      assert_select "input#work_artist_id", :name => "work[artist_id]"
      assert_select "input#work_is_real", :name => "work[is_real]"
    end
  end
end
