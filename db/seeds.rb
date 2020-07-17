# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'

Ingredient.delete_all

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
user_serialized = open(url).read
ingredients = JSON.parse(user_serialized)

ingredients["drinks"].each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end


Cocktail.create!(
  name: 'Dark and Stormy'
)

Cocktail.create!(
  name: 'Mojito'
)

Cocktail.create!(
  name: 'Margarita'
)

Cocktail.create!(
  name: 'Moscow Mule'
)

Cocktail.create!(
  name: 'Old Fashion'
)

Cocktail.create!(
  name: 'Apple-tini'
)

Cocktail.create!(
  name: 'Last Word'
)

Cocktail.create!(
  name: 'Pina Colada'
)

Cocktail.create!(
  name: 'Rum Runner'
)

Cocktail.create!(
  name: 'Negroni'
)

Cocktail.create!(
  name: 'Just give me a beer'
)


