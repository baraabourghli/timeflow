class Activity
  include Mongoid::Document

  belongs_to :author
  field :action, type: String
  field :subject, type: String
  field :date
end
