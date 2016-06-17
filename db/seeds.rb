require 'faker'

# User.delete_all
# Project.delete_all
# Volunteer.delete_all
# Organization.delete_all
# Member.delete_all

users = 20.times.map do
  User.create!( :first_name =>  Faker::Superhero.name,
                :last_name  =>  Faker::StarWars.droid,
                :email      =>  Faker::Internet.email,
                :password   =>  'password' )
end

User.create!(first_name: 'Richie', last_name: 'Yi', email: 'richie@yi.com', password: 123)
User.create!(first_name: 'Daniel', last_name: 'Nguyen', email: 'daniel@nguyen.com', password: 123)
User.create!(first_name: 'Jaq', last_name: 'Sparrow', email: 'jaq@sparrow.com', password: 123)

organizations = 20.times.map do
  Organization.create!( :name  =>  Faker::StarWars.character,
                        :type_of    =>  'non profit')
end

Organization.create!(name: 'DBC', type_of: 'for profit')

projects = 20.times.map do
  Project.create!(  :name             =>  Faker::Book.title,
                    :begin_date       =>  Date.today,
                    :end_date         =>  Faker::Date.forward(30),
                    :cost             =>  rand(100..3000),
                    :organization_id  => rand(1..20),
                    :organizer_id     => rand(1..20),
                    :location         => Faker::Address.city,
                    :details          => Faker::Hacker.say_something_smart)
end


members = 20.times.map do
  Member.create!( :user_id            =>  rand(1..20),
                  :organization_id    =>  rand(1..20))
end

volunteers = 20.times.map do
  Volunteer.create!(  :user_id       =>  rand(1..20),
                      :project_id    =>  rand(1..20))
end

