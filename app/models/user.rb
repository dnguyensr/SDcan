require 'bcrypt'

class User < ActiveRecord::Base

  has_many :members
  has_many :volunteers
  has_many :organizations, through: :members
  has_many :projects, through: :volunteers
  has_many :created_projects, foreign_key: :organizer_id
  validates :first_name, :email, :last_name, :password, presence: true
  validates :email, uniqueness: true

include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    user = User.find_by(email: email)
    return user if user && user.password == password
    nil
  end

end
