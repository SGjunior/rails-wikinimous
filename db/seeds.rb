# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Article.create( title: 'Article 2', content: 'lorem ipsum content 2')
# Article.create( title: 'Article 3', content: 'lorem ipsum content 3')

10.times do

  Article.create(title: Faker::HarryPotter.character, content: Faker::HarryPotter.quote)

end
