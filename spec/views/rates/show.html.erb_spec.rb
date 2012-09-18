require 'spec_helper'

describe "rates/show.html.erb" do
  before(:each) do
    @rate = assign(:rate, stub_model(Rate,
      :apartment => 1,
      :season => 1,
      :price => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
