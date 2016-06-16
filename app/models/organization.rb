class Organization < ActiveRecord::Base
  has_many :members
  has_many :volunteers
  has_many :projects, through: :volunteers
  has_many :organizations, through: :members
end
