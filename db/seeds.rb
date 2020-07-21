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

ingredients = ['Simple syrup', 'Lime juice', 'Lemon juice', 'London Dry gin', 'vodka',
              'Light White rum', 'Angostura aromatic bitters', 'Orange juice', 'Triple sec',
              'Dry vermouth',  'Cognac V.S.O.P',  'Pineapple juice',  'Sweet vermouth',
              'Apple juice',  'Pomegranate (Grenadine) syrup',  'Tequila',  'Egg white',  'Orange bitters',
                  'Cranberry juice',  'Grand Marnier',  'Club soda',  'Cream',  'Maraschino liqueur',
                    'Blended Scotch whisky',  'Fresh mint leaves/sprig',  'Brut Champagne',  'Grapefruit juice',
                      'Elderflower liqueur',  'Absinth',  'Apricot brandy',  'Coffee liqueur',  'Campari Bitter',
                        'Calvados Apple brandy',  'Amaretto',  'Milk',  'Black Raspberry liqueur',  'Honey',
                          'Bénédictine D.O.M.',  'White crème de cacao',  'Peychauds Aromatic Bitters',  'Aged rum',
                           'Citrus vodka',  'Chartreuse Vert (Green)',  'Cherry brandy',  'Irish Cream liqueur',
                             'Orgeat syrup',  'Cachaça',  'Lime Cordial',  'Raspberries (Fresh)',  'Golden rum',
                             'Ginger ale',  'Crème de cassis',  'Melon liqueur',  'Galliano L Autentico',  'Blue curaçao',
                             'Drambuie',  'Vanilla vodka',  'Rye Whiskey',  'Hazelnut liqueur',
                               'Fino sherry',  'Maple syrup',  'Single Malt Scotch whisky',  'Agave syrup',
                               'Chartreuse Jaune (yellow)',  'Peach Schnapps',  'Crème de banana',  'Port Wine',
                               'Apple Schnapps',  'Ginger beer',  'Falernum',  'Lemonade', 'Sprite', 'Coke',  'Coconut rum',
                                 'White crème de menthe',  'Ginger liqueur',  'Southern Comfort',  'Dark crème de cacao',
                                 'Basil Leave',  'Dubonnet Red',  'Passion Fruit syrup',  'Jenever',  'Raspberry vodka',
                                  'Sake',  'Overproof rum',  'Strawberries (Fresh)',  'Navy rum',  'Prosecco Sparkling Wine',
                                    'Vanilla sugar syrup',  'Passion fruit (Fresh)',  'Lillet Blanc',  'Honey sugar syrup',
                                      'Espresso Coffee',  'Black Pepper',  'Tonic Water',  'Anise liqueur',
                                       'Crème de framboise liqueur']

ingredients.each do |i|
  Ingredient.create!(name: i)
end

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
user_serialized = URI.open(url).read
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
  name: 'rum Runner'
)

Cocktail.create!(
  name: 'Negroni'
)

Cocktail.create!(
  name: 'Just give me a beer'
)






