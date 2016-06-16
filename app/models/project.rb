class Project < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :organization
  has_many :volunteers
  validates :name, :begin_date, :end_date, :organization, presence: true
end
