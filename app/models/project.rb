class Project < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :organization
  has_many :volunteers
  validates :name, :begin_date, :end_date, :organization_id, presence: true
  # custom validator for date
end
