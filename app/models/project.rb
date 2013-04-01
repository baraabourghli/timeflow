class Project
  include Mongoid::Document

  field :name, type: String
  belongs_to :owner
  embeds_many :participants
  has_many :issues, :dependent => :destroy
  accepts_nested_attributes_for :issues, :reject_if => lambda { |a| a[:title].blank? }
  has_many :activites, :dependent => :destroy
  accepts_nested_attributes_for :activites
end
