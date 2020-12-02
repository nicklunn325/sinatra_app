10.times do 
    Genre.create(name: Faker::Book.genre)
end

50.times do 
    Movie.create(title: Faker::Movie.title, director: Faker::Name.name, year: rand(1950..2020), genre_id: rand(1..10)   )
end