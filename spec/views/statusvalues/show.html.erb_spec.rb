require 'spec_helper'

describe "statusvalues/show.html.erb" do
  before(:each) do
    @statusvalue = assign(:statusvalue, stub_model(Statusvalue,
      :status => 1,
      :text => "Text"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Text/)
  end
end
