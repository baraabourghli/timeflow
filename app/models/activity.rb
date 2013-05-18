class Activity
  include Mongoid::Document
  include Mongoid::Timestamps

  field :action, type: String
  field :subject, type: String
  field :object

end
