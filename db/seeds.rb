(1..40).each do |id|  
    Book.create!(
        title: Faker::Book.title,
        author: Faker::Book.author,
        genre: Faker::Book.genre,
        read: [true, false].sample,
        published_date: Faker::Date.between(from: '1880-09-23', to: '2020-09-25'),
        description: Faker::GreekPhilosophers.quote
    )   
end

(1..50).each do |id|  
    List.create!(
        name: Faker::Commerce.department,
        book_id: rand(1..40),
        user_id: rand(1..20)
    )
    
end

(1..100).each do |id|
    Library.create!(
        user_id: rand(1..20),
        book_id: rand(1..40)
    )
end

(1..20).each do |id|
    User.create!(
        username: Faker::Internet.username,
        password_digest: "password123"
    )
end