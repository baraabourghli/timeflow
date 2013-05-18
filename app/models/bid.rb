class Bid
  include Mongoid::Document
  include Mongoid::TimeStamps

  field :title, type: String
  field :description, type: String
  field :agrees, type: Integer
  field :disagrees, type: Integer

  belongs_to :user
  
  embedded_in :project
  embeds_many :arguments

end
