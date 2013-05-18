class Argument
  include Mongoid::Document
  include Mongoid::TimeStamps

  field :text, type: String

  belongs_to :user
  
  embedded_in :bid

end
