require 'spec_helper'

describe "home page" do
  it "gets the root path" do

    get "/"
    response.should be_success
    end
end