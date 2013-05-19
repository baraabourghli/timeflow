require 'spec_helper'

describe "create new user" do
  it "creates new user" do
   create(:user)
   create(:user)
  end
end