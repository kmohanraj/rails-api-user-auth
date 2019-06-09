# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: "mohan@gmail.com", username: "mohan", password: "mohan@gmail.com", password_confirmation: "mohan@gmail.com")
User.create(email: "raj@gmail.com",username: "raj", password: "raj@gmail.com", password_confirmation: "raj@gmail.com")
User.create(email: "samy@gmail.com", username: "samy", password: "samy@gmail.com", password_confirmation: "samy@gmail.com")
User.create(email: "vijay@gmail.com", username: "vijay", password: "vijay@gmail.com", password_confirmation: "vijay@gmail.com")
