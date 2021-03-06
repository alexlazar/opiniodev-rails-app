class Idea
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Pagination
  field :title, type: String
  field :votes, type: Integer, :default=>0
  field :description, type: String
  field :voted_by, type: Array, :default=>[]

  belongs_to :user
  accepts_nested_attributes_for :user

  #validations
  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :user

  attr_accessible :title,:votes,:description,:user_id,:voted_by

end
