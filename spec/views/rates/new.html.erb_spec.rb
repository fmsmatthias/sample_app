require 'spec_helper'

describe "rates/new.html.erb" do
  before(:each) do
    assign(:rate, stub_model(Rate,
      :apartment => 1,
      :season => 1,
      :price => 1
    ).as_new_record)
  end

  it "renders new rate form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => rates_path, :method => "post" do
      assert_select "input#rate_apartment", :name => "rate[apartment]"
      assert_select "input#rate_season", :name => "rate[season]"
      assert_select "input#rate_price", :name => "rate[price]"
    end
  end
end
