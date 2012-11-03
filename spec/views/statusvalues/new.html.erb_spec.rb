require 'spec_helper'

describe "statusvalues/new.html.erb" do
  before(:each) do
    assign(:statusvalue, stub_model(Statusvalue,
      :status => 1,
      :text => "MyString"
    ).as_new_record)
  end

  it "renders new statusvalue form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => statusvalues_path, :method => "post" do
      assert_select "input#statusvalue_status", :name => "statusvalue[status]"
      assert_select "input#statusvalue_text", :name => "statusvalue[text]"
    end
  end
end
