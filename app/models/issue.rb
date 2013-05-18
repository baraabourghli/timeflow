class Issue
  include Mongoid::Document
  include Mongoid::TimeStamps

  field :title, type: String
  field :difficulty, type: String
  field :type, type: IssueType # issue type : Bug, Feature ... etc
  field :priority, type: Integer 
  field :state, type: IssueState # the state of the current issue: Not_Started, In_Progress  ... etc
  field :tags, type: Array

  belongs_to :user
  has_one :requester, class_name: 'User'
  has_one :assigend_to, class_name: 'User'
  has_many :activities
  
  embedded_in :project
  embeds_many :comments

end
