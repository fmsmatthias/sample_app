require 'spec_helper'

describe "statusvalues/index.html.erb" do
  before(:each) do
    assign(:statusvalues, [
      stub_model(Statusvalue,
        :status => 1,
        :text => "Text"
      ),
      stub_model(Statusvalue,
        :status => 1,
        :text => "Text"
      )
    ])
  end

  it "renders a list of statusvalues" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Text".to_s, :count => 2
  end
end
