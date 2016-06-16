require 'bcrypt'

class User < ActiveRecord::Base

  has_many :members
  has_many :volunteers
  has_many :organizations, through: :members
  has_many :projects, through: :volunteers

include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

end
