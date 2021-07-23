# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# RUN bundle exec rails db:setup

Cat.destroy_all


cat1 = Cat.create!(birth_date: "1995-12-18", color: 'black', name: 'deep', sex: 'M', description: "it is deep the cat")
cat2 = Cat.create!(birth_date: "1994-1-11", color: 'red', name: 'hansaem', sex: 'F', description: "it is hansaem the cat")
