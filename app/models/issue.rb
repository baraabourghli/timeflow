class Issue
  include Mongoid::Document

  embeds_many :comments
  belongs_to :project
  belongs_to :requester # a user can request an issue
  belongs_to :solver    # a user can solve an issue (can be null at first)
  field :title, type: String
  field :rank, type: String
  field :type # issue type : Bug, Feature ... etc
  field :priority, type: Integer 
  field :state # the state of the current issue: Not_Started, In_Progress  ... etc
end
