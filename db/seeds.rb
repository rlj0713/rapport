# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'mike', name: 'Mike Ditka', password: 'ditka', coach: true, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlTb6qZreuzn7kXfZd-xZsRk2WvgU4bD0ttg&usqp=CAU")
User.create(username: 'bill', name: 'Bill Nye', password: 'nye', coach: true, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlTb6qZreuzn7kXfZd-xZsRk2WvgU4bD0ttg&usqp=CAU")
User.create(username: 'ben', name: 'Ben Stein', password: 'stein', coach: true, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlTb6qZreuzn7kXfZd-xZsRk2WvgU4bD0ttg&usqp=CAU")
User.create(username: 'peter', name: 'Peter Pan', password: 'pan', image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlTb6qZreuzn7kXfZd-xZsRk2WvgU4bD0ttg&usqp=CAU")
User.create(username: 'z', name: 'Z Drake', password: 'drake', image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlTb6qZreuzn7kXfZd-xZsRk2WvgU4bD0ttg&usqp=CAU")
User.create(username: 'reid', name: 'Reid Jackson', password: 'jackson', image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlTb6qZreuzn7kXfZd-xZsRk2WvgU4bD0ttg&usqp=CAU")
User.create(username: 'winnie', name: 'Winnie the Pooh', password: 'pooh', image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlTb6qZreuzn7kXfZd-xZsRk2WvgU4bD0ttg&usqp=CAU")

(1..10).to_a.each { |n| Level.create(value: n) }

Note.create(creator_id: 1, target_id: 5, content: "You're doing great", level_id: 5)
Note.create(creator_id: 1, target_id: 6, content: "Please bathe", level_id: 5)
Note.create(creator_id: 1, target_id: 7, content: "Chill on the honey dude", level_id: 5)
Note.create(creator_id: 1, target_id: 4, content: "Stop flying so much", level_id: 5)
Note.create(creator_id: 2, target_id: 6, content: "Consider the following", level_id: 6)
Note.create(creator_id: 6, target_id: 6, content: "I'm working on the smell", level_id: 6)
Note.create(creator_id: 7, target_id: 7, content: "I think I'm stuck", level_id: 6)

