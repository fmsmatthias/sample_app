require 'spec_helper'

describe "rates/index.html.erb" do
  before(:each) do
    assign(:rates, [
      stub_model(Rate,
        :apartment => 1,
        :season => 1,
        :price => 1
      ),
      stub_model(Rate,
        :apartment => 1,
        :season => 1,
        :price => 1
      )
    ])
  end

  it "renders a list of rates" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
