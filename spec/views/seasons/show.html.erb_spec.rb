require 'spec_helper'

describe "seasons/show.html.erb" do
  before(:each) do
    @season = assign(:season, stub_model(Season,
      :season => 1,
      :langu => "Langu",
      :text => "Text"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Langu/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Text/)
  end
end
