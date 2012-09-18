require 'spec_helper'

describe "seasons/index.html.erb" do
  before(:each) do
    assign(:seasons, [
      stub_model(Season,
        :season => 1,
        :langu => "Langu",
        :text => "Text"
      ),
      stub_model(Season,
        :season => 1,
        :langu => "Langu",
        :text => "Text"
      )
    ])
  end

  it "renders a list of seasons" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Langu".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Text".to_s, :count => 2
  end
end
