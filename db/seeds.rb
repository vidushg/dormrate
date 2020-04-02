# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Albert",email: "albert@grinnell.edu")
User.create(name: "John",email: "john@grinnell.edu")
User.create(name: "Bob",email: "bob@grinnell.edu")
User.create(name: "Jack",email: "jack@grinnell.edu")

Micropost.create(content: "Younker 9113", user_id: User.find(1).email)
Micropost.create(content: "Dibble 2344", user_id: User.find(2).email)
Micropost.create(content: "Rose 4565", user_id: User.find(3).email)
Micropost.create(content: "Loose 3345", user_id: User.find(4).email)
