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

janice = janice_user.create_profile!(name: "Janice")
haleigh = haleigh_user.create_profile!(name: "Haleigh")
matt = matt_user.create_profile!(name: "Matt")

janice.friendships.create!(friend: matt)
