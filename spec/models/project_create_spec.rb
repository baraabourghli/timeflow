require 'spec_helper'

describe "create new project" do
  it "creates a project with one owner" do
   user = create(:user)
   project = build(:project)
   project.owner = user
   project.save
   project.title.should_not == nil
   project.owner.should_not == nil
  end
end