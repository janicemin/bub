# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

janice_user = User.create!(email: "janicemin@gmail.com", password: "topsecret", password_confirmation: "topsecret")

haleigh_user = User.create!(email: "hh@example.com", password: "password", password_confirmation: "password")
matt_user = User.create!(email: "matt.scilipoti@ga.co", password: "password", password_confirmation: "password")

janice = janice_user.create_profile!(name: "Janice", age: 32, location: "DC", phone_number: "440-503-2685", email: "janicemin@gmail.com")
haleigh = haleigh_user.create_profile!(name: "Haleigh", age: 24, location: "moon", phone_number: "202-867-5309", email: "hh@example.com")
matt = matt_user.create_profile!(name: "Matt", age: 15, location: "mars", phone_number: "123-456-789", email: "matt.scilipoti@ga.co")

janice.friendships.create!(friend: matt)
