class User
  include Mongoid::Document

  field :name, type: String
  field :email, type: String
  field :password, type: String
  has_many :projects
  has_many :issues
  has_many :activities
  has_many :comments
end
