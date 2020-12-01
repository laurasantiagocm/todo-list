# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

List.create(
  name: 'Lista criada com o seed'
)

10.times do |i|
  List.create(
    name: "Lista #{i}"
  )
end

10.times do
  List.create(
    name: Faker::Lorem.paragraph
  )
end

20.times do
  Todo.create(
    name: Faker::Lorem.paragraph,
    completed: [true, false].sample,
    list_id: rand(1..List.count)
  )
end
