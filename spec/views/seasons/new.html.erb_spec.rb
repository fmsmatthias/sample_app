require 'spec_helper'

describe "seasons/new.html.erb" do
  before(:each) do
    assign(:season, stub_model(Season,
      :season => 1,
      :langu => "MyString",
      :text => "MyString"
    ).as_new_record)
  end

  it "renders new season form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => seasons_path, :method => "post" do
      assert_select "input#season_season", :name => "season[season]"
      assert_select "input#season_langu", :name => "season[langu]"
      assert_select "input#season_text", :name => "season[text]"
    end
  end
end
