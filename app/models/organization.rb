class Organization < ActiveRecord::Base
  has_many :members
  has_many :volunteers
  has_many :projects
  has_many :users, through: :members
end
