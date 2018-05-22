# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Sport.destroy_all
State.destroy_all
User.destroy_all

sports_array = ["Paragliding", "Archery", "Badminton", "Baseball", "Table tennis", "Tennis", "Volleyball", "Basketball", "Netball", "Cricket", "Cheerleading", "Gymnastics", "Skateboarding", "Snowboarding", "Surfing", "Wakesurfing", "Kitesurfing", "Wakeboarding", "Paddleboarding", "Climbing", "Abseiling", "Canyoning", "Hiking", "Cycling", "Boxing", "Karate", "Taekwondo", "Fencing", "Judo", "Snooker", "Equitation", "Fishing", "Football", "Rugby", "Handball", "Golf", "Curling", "Ice Hockey", "Ice Dancing", "Biathlon", "Tennis", "Running", "Sailing", "Skiing", "Bobsleigh", "Polo", "Squash", "Canoeing", "Kayaking", "Rafting", "Rowing", "Water Polo", "Swimming", "Diving", "Crossfit", "Yoga", "Bodybuilding", "Kart racing", "Rally raid", "Road racing", "Motocross", "Petanque", "Quidditch"]

sports_array.each do |sport|
  Sport.create(name: sport)
end

states_array = ["new", "very good", "good", "decent"]

states_array.each do |state|
  State.create(description: state)
end

test_user = User.create(email: "laumartin4@gmail.com", password: "123456")
