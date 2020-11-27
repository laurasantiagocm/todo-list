# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
  List.create(
    name: Faker::Name.first_name
  )
end

List.all.each do |list|
  5.times do
    Todo.create(
      name: Faker::Name.first_name,
      completed_at: DateTime.now,
      list_id: list.id
    )
  end
end