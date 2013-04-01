class Issue
  include Mongoid::Document

  embeds_many :comments
  belongs_to :project
  belongs_to :requester
  field :title, type: String
  field :rank, type: String
  field :type
  field :priority, type: Integer
end
