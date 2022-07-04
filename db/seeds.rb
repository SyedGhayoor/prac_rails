# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

author = Author.new(
    f_name: 'Ghayoor',
    l_name: 'Haider',
    email: 'ghayoorhaider@stackup.com'
)

author.save

5.times do |i|
    puts "Creating Author #{i+1}"
    Author.create(
        f_name: "Author #{i+1}",
        l_name: "Lname #{i+1}",
        email: "author#{i+1}@stackup.com"
    )
end