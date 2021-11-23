# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
  User.create(email:Faker::Internet.email, password:"123456", name:Faker::Name.name)
end

private_tab = [true, false]

30.times do 
  Article.create(user_id:rand(1..10),title:Faker::DcComics.title, content:Faker::GreekPhilosophers.quote, private:private_tab[rand(0..1)])
end

50.times do
  Comment.create(user_id:rand(1..10),article_id:rand(1..30), content:Faker::GreekPhilosophers.quote)
end