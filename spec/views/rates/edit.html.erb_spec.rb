require 'spec_helper'

describe "rates/edit.html.erb" do
  before(:each) do
    @rate = assign(:rate, stub_model(Rate,
      :apartment => 1,
      :season => 1,
      :price => 1
    ))
  end

  it "renders the edit rate form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => rates_path(@rate), :method => "post" do
      assert_select "input#rate_apartment", :name => "rate[apartment]"
      assert_select "input#rate_season", :name => "rate[season]"
      assert_select "input#rate_price", :name => "rate[price]"
    end
  end
end
