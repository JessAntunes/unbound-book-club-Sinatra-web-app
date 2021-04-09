book_description = Faker::GreekPhilosophers.quote
published_date = Faker::Date.between(from: '1880-09-23', to: '2020-09-25')
Faker::Book.title
Faker::Book.author
Faker::Book.genre

list_name = Faker::Commerce.department
book_id Faker::Number.between(from: 1, to: 20)
user_id Faker::Number.between(from: 1, to: 20)

library
user_id Faker::Number.between(from: 1, to: 20)
book_id Faker::Number.between(from: 1, to: 20)

user
username = Faker::Internet.username
password = username