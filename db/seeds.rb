# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
Review.destroy_all
User.destroy_all

User.create!(email: 'adminfriend@admin.com', password: 'asdfasdf', admin: true)
User.create!(email: 'userfriend@user.com', password: 'asdfasdf', admin: false)

Product.create!(name: 'Bagel', cost: rand(1..5), country_of_origin: Faker::Address.country)
Product.create!(name: 'Lox', cost: rand(1..5), country_of_origin: Faker::Address.country)
Product.create!(name: 'Kugel', cost: rand(1..5), country_of_origin: Faker::Address.country)


10.times do |index|
  Product.create!(name: Faker::Food.dish, cost: rand(1..5), country_of_origin: Faker::Address.country)
end

Product.all.each do |product|
5.times do |index|
  product.reviews.create!(content_body: Faker::Quote.matz, author: Faker::Name.first_name,rating: rand(1..5)) 
 
  end
end

p "Created #{Review.count} fake reviews with Faker"

p "Created #{Product.count} fake products with Faker"
