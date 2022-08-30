# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

puts "Cleaning database ..."
Product.destroy_all
User.destroy_all
puts "Creating products ..."

user_1 = User.create!(
  email: "example@example.com",
  password: "123456"
)

user_2 = User.create!(
  email: "example_2@example_2.com",
  password: "123456"
)

10.times do
  product = Product.create!(
    name: Faker::Food.spice,
    overview: Faker::Food.ethnic_category,
    price: Faker::Number.decimal(l_digits: 2),
    image_url: "https://picsum.photos/seed/picsum/200/300",
    location: Faker::Address.full_address,
    user: user_1
  )
  puts "product with id: #{product.id} has been created!"
end

10.times do
  product = Product.create!(
    name: Faker::Food.spice,
    overview: Faker::Food.ethnic_category,
    price: Faker::Number.decimal(l_digits: 2),
    image_url: "https://picsum.photos/seed/picsum/200/300",
    location: Faker::Address.full_address,
    user: user_2
  )
  puts "product with id: #{product.id} has been created!"
end

puts "Products created!"
