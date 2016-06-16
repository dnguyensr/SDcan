require 'faker'

# User.delete_all
# Project.delete_all
# Volunteer.delete_all
# Organization.delete_all
# Member.delete_all

users = 20.times.map do
  User.create!( :first_name =>  Faker::Name.first_name,
                :last_name  =>  Faker::Name.last_name,
                :email      =>  Faker::Internet.email,
                :password   =>  'password' )
end

projects = 20.times.map do
  Project.create!(  :name             =>  Faker::Book.title,
                    :begin_date       =>  Date.today,
                    :end_date         =>  Faker::Date.forward(30),
                    :cost             =>  rand(100..3000),
                    :organization_id  => rand(1..20))
end


members = 20.times.map do
  Member.create!( :user_id            =>  rand(1..20),
                  :organization_id    =>  rand(1..20))
end

volunteers = 20.times.map do
  Volunteer.create!(  :user_id       =>  rand(1..20),
                      :project_id    =>  rand(1..20))
end

organizations = 20.times.map do
  Organization.create!( :name  =>  Faker::StarWars.character,
                        :type_of    =>  'non profit')
end
