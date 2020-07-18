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

ingredients = ['Sugar syrup', 'Lime juice', 'Lemon juice', 'London dry gin', 'Vodka',
              'Light white rum', 'Angostura Aromatic Bitters', 'Orange juice', 'Triple sec',
              'Dry vermouth',  'Cognac V.S.O.P',  'Pineapple juice',  'Sweet vermouth',  'Bourbon whiskey',
              'Apple juice',  'Pomegranate (grenadine) syrup',  'Tequila',  'Egg white',  'Orange bitters',
                  'Cranberry juice',  'Grand Marnier',  'Club soda',  'Cream',  'Maraschino liqueur',
                    'Blended Scotch whisky',  'Fresh mint leaves/sprig',  'Brut champagne',  'Grapefruit juice',
                      'Elderflower liqueur',  'Absinth',  'Apricot brandy',  'Coffee liqueur',  'Campari Bitter',
                        'Calvados apple brandy',  'Amaretto liquer',  'Milk',  'Black raspberry liquer',  'Honey',
                          'Bénédictine D.O.M.',  'White crème de cacao',  'Peychauds aromatic bitters',  'Aged rum',
                           'Citrus flavoured vodka',  'Chartreuse Vert (green)',  'Cherry brandy',  'Irish cream liquer',
                             'Almond (orgeat) syrup',  'Cachaça',  'Lime cordial',  'Raspberries (fresh)',  'Golden rum',
                             'Ginger ale',  'Crème de cassis',  'Melon liqueur',  'Galliano L Autentico',  'Blue curaçao',
                             'Drambuie',  'Vanilla infused vodka',  'Straight rye whiskey',  'Hazelnut liquer',
                               'Fino sherry',  'Maple syrup',  'Islay single malt Scotch whisy',  'Agave syrup',
                               'Chartreuse Jaune (yellow)',  'Peach Schnapps',  'Crème de banana',  'Port wine',
                               'Apple schnapps',  'Ginger beer',  'Falernum',  'Lemonade', 'Sprite', 'Coke',  'Coconut rum',
                                 'White crème de menthe',  'Ginger liquer',  'Southern Comfort',  'Dark crème de cacao',
                                 'Basil leave',  'Dubonnet Red',  'Passion fruit syrup',  'Jenever',  'Vodka raspberry flavour',
                                  'Sake',  'Overproof rum',  'Strawberries (fresh)',  'Navy rum',  'Prosecco sparkling wine',
                                    'Vanilla sugar syrup',  'Passion fruit (fresh)',  'Lillet Blanc',  'Honey sugar syrup',
                                      'Espresso coffee',  'Black pepper',  'Tonic water',  'Anise liquer',
                                       'Crème de framboise liqueur']

ingredients.each do |i|
  Ingredient.create!(name: i)
end

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
user_serialized = open(url).read
ingredients = JSON.parse(user_serialized)

ingredients["drinks"].each do |ingredient|
  Ingredient.find_or_create_by(name: ingredient["strIngredient1"])
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






