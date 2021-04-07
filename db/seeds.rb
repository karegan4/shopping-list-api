# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

grocery = Store.create(name: 'grocery')
pharmacy = Store.create(name: 'pharmacy')
hardware = Store.create(name: 'hardware')

Item.create([
    {name: 'Apple', store: grocery},
    {name: 'Cough Syrup', store: pharmacy},
    {name: 'Screwdriver', store: hardware}
])