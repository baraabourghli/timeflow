class Comment
  include Mongoid::Document

  belongs_to :author
  belongs_to :issue
  field :text, type: String
  field :date_created
end
