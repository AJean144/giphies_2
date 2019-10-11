# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

GIPHY_TITLES = 10.times.map { Faker::Avatar.image }

SPLIT = 0.4
OFFSET = GIPHY_TITLES.length * SPLIT

GIPHY_USERS = {
  'andell@politech.io' => GIPHY_TITLES[0, OFFSET],
  'jean@politech.io' => GIPHY_TITLES[OFFSET..-1]
}

GIPHY_USERS.each do |email, giphies|
  user = User.create(email: email, password: 'password')
  giphies.each { |title| user.giphies.build(title: title) }
  user.save
end
