class Activity
  include Mongoid::Document
  include Mongoid::TimeStamps

  field :action, type: String
  field :subject, type: String
  field :object

end
