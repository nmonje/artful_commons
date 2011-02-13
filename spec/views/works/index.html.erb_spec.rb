require 'spec_helper'

describe "works/index.html.erb" do
  before(:each) do
    assign(:works, [
      stub_model(Work,
        :title => "Title",
        :description => "MyText",
        :sketch => "Sketch",
        :artist_id => 1,
        :is_real => false
      ),
      stub_model(Work,
        :title => "Title",
        :description => "MyText",
        :sketch => "Sketch",
        :artist_id => 1,
        :is_real => false
      )
    ])
  end

  it "renders a list of works" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Sketch".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
