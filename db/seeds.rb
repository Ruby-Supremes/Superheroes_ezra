# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts '🌱 seeding data....'

#Creation of Heroes data to the database

hero1 = Hero.create(name: "Kamala Khan", super_name: "Ms. Marvel")
hero2 = Hero.create(name: "Doreen Green", super_name: "Squirrel Girl")
hero3 = Hero.create(name: "Gwen Stacy", super_name: "Spider-Gwen")

#Creation of Powers data to the database
wield = Power.create(name: "super strength",description: "gives the wielder super-human strengths")
flight = Power.create(name: "flight",description: "gives the wielder the ability to fly through the skies at supersonic speed")


#Creation of HeroPowers data to the database
HeroPower.create("strength": "strong", "hero_id":hero1.id, "power_id":flight.id)
HeroPower.create("strength": "weak", "hero_id":hero2.id, "power_id":wield.id)
HeroPower.create("strength": "average", "hero_id":hero3.id, "power_id":flight.id)


puts '....✅ done seeding data'
