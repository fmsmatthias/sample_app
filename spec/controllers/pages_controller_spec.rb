require 'spec_helper'

describe PagesController do

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'ap1'" do
    it "should be successful" do
      get 'ap1'
      response.should be_success
    end
  end

  describe "GET 'ap2'" do
    it "should be successful" do
      get 'ap2'
      response.should be_success
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
  end

end
