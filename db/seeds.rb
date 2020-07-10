# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  User.create(email: Faker::Internet.email,
              password: "password")
              #password_confirm: "password")

  Book.create(isbn: Digest::UUID.uuid_v5(Digest::UUID::DNS_NAMESPACE, 'isbn'),
              title: Faker::Book.title,
              author: Faker::Book.author,
              publisher: Faker::Book.publisher,
              publish_date: Faker::Date.birthday(min_age: 18, max_age: 65))
end

