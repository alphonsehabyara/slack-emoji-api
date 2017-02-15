# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


200.times do 
  SlackEmoji.create(
      id: Faker::SlackEmoji.id,
      people: Faker::SlackEmoji.people,
      nature: Faker::SlackEmoji.nature,
      food_and_drink: Faker::SlackEmoji.food_and_drink,
      celebration: Faker::SlackEmoji.celebration,
      activity: Faker::SlackEmoji.activity,
      travel_and_places: Faker::SlackEmoji.travel_and_places,
      objects_and_symbols: Faker::SlackEmoji.objects_and_symbols,
      custom: Faker::SlackEmoji.custom,
      emoji: Faker::SlackEmoji.emoji
    )
end