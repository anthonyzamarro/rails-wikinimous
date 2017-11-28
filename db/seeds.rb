# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding now"

Article.destroy_all

10.times do |new|
  article = Article.new(title: Faker::Book.title, content: Faker::MostInterestingManInTheWorld.quote )
  p article.title
  p article.content
  article.save
end

puts "Seeding done"
