class Project < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :organization
  has_many :volunteers
  validates :name, :begin_date, :end_date, presence: true
  belongs_to :organizer , class_name: :User
  # custom validator for date
end
