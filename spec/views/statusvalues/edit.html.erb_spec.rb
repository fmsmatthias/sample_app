require 'spec_helper'

describe "statusvalues/edit.html.erb" do
  before(:each) do
    @statusvalue = assign(:statusvalue, stub_model(Statusvalue,
      :status => 1,
      :text => "MyString"
    ))
  end

  it "renders the edit statusvalue form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => statusvalues_path(@statusvalue), :method => "post" do
      assert_select "input#statusvalue_status", :name => "statusvalue[status]"
      assert_select "input#statusvalue_text", :name => "statusvalue[text]"
    end
  end
end
