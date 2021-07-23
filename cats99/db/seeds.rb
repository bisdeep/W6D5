# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# RUN bundle exec rails db:setup

Cat.destroy_all


cat1 = Cat.create!(birth_date: "1995-12-18", color: 'Black', name: 'deep', sex: 'M', description: "it is deep the cat")
cat2 = Cat.create!(birth_date: "1994-1-11", color: 'Red', name: 'hansaem', sex: 'F', description: "it is hansaem the cat")

rental1 = CatRentalRequest.create!(cat_id: 1, start_date: "2021-7-1", end_date: "2021-7-23", status: "APPROVED")
rental2 = CatRentalRequest.create!(cat_id: 1, start_date: "2021-7-25", end_date: "2021-7-24", status: "PENDING")