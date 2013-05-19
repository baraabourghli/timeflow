class Project
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String

  belongs_to :owner, class_name: 'User', inverse_of: :projcts
  has_many :contributers, class_name: 'User', inverse_of: :contribution
  has_many :watchers, class_name: 'User', inverse_of: :watching

  embeds_many :issues
  embeds_many :bids

  #validates_presence_of :owner

end
