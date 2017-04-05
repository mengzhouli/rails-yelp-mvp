# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
  resto = Restaurant.create(
    name: ["pfk", "mcD", "AuCoq", "Aux Vivres", "Gus", "Belle Province", "Chez Boris"].sample,
    address: ["john st", "river st", "ave blvd", "rue andre", "rue cath", "chemin mary"].sample,
    phone_number: rand(4000000..9999999),
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )

  5.times do
    rev = Review.new(
      content: ["This is a shite resto, don't come here", "The rat king lives here", "Terrible Service", "You get what you paid for", "My fav", "Eat here if you want to die"].sample,
      rating: rand(0..5)
    )
    rev.restaurant = resto
    rev.save!
  end
end
