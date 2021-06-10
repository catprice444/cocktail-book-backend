# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



alcohol_a = Alcohol.create(name: "Vodka", 
    website: "https://vinepair.com/spirits-101/intro-vodka-guide/")

alcohol_b = Alcohol.create(name: "Tequila", 
    website: "https://vinepair.com/spirits-101/intro-tequila-guide/")

alcohol_c = Alcohol.create(name: "Gin", 
    website: "https://vinepair.com/spirits-101/intro-gin-guide/")

alcohol_d = Alcohol.create(name: "Rye Whiskey", 
    website: "https://vinepair.com/spirits-101/intro-rye-whiskey-guide/")

alcohol_e = Alcohol.create(name: "Rum", 
    website: "https://vinepair.com/spirits-101/intro-rum-guide/")
    

cocktail_a = Cocktail.create(name: "Gin Martini", 
    alcohol: alcohol_c, 
    ingredients: "2 ¾ oz Gin. ¾ oz Dry vermouth. Lemon twist or olives for garnish.", 
    recipe: "Combine ingredients in an ice-filled mixing glass or shaker. Stir vigorously for 15 seconds. Strain into chilled coupe or Martini glass. Garnish with lemon twist or olives and enjoy.")

cocktail_b = Cocktail.create(name: "Negroni", 
    alcohol: alcohol_c, 
    ingredients: "1 oz Gin. 1 oz Campari. 1 oz Sweet Vermouth.", 
    recipe: "Combine all ingredients in mixing glass with ice. Stir. Strain into chilled cocktail glass or over ice in a rocks glass. Garnish with an orange twist and enjoy.")

cocktail_c = Cocktail.create(name: "Moscow Mule", 
    alcohol: alcohol_a, 
    ingredients: "2 ounces vodka. 1 tablespoon (½ ounce) freshly-squeezed lime juice. 4 ounces ginger beer. ice.", 
    recipe: "Fill a copper mug or a tall cocktail glass with ice. Add vodka and lime juice.  Then fill the glass to the top with ginger beer. Give the drink a quick stir, top with garnish(es) if desired, then serve cold.")

cocktail_d = Cocktail.create(name: "Cosmopolitan", 
    alcohol: alcohol_a, 
    ingredients: "1 1/2 oz Vodka. ½ oz Cranberry juice. ¾ oz Lime. ¾ oz Cointreau L'unique.", 
    recipe: "Combine all ingredients in shaker tin. Add ice. Shake vigorously, until tin is frosted over. Strain into chilled cocktail glass. Garnish with lime twist and enjoy.")

cocktail_e = Cocktail.create(name: "Margarita", 
    alcohol: alcohol_b, 
    ingredients: "1 ¾ oz Blanco tequila. 1 oz Lime juice. ¾ oz Triple Sec.", 
    recipe: "Combine all ingredients in shaker tin. Add ice to small shaker tin. Shake vigorously. Strain into chilled rocks glass with a salt rim over fresh ice. Garnish with lime and enjoy.")

cocktail_f = Cocktail.create(name: "Tequila Sunrise", 
    alcohol: alcohol_b, 
    ingredients: "2 oz Tequila. As needed Orange juice. 1/2 oz Grenadine.", 
    recipe: "Combine ingredients in a highball, excluding grenadine. Add ice. Using a spoon, sink grenadine to the bottom of the glass. Garnish with an orange wheel and enjoy.")

cocktail_g = Cocktail.create(name: "Rye Old Fashion", 
    alcohol: alcohol_d, 
    ingredients: "2 ½ oz Bourbon (or Rye Whiskey). 1/2 oz simple syrup. 3 dash Angostura Bitters. 1 each Lemon and orange twist.", 
    recipe: "Combine first three ingredients in a rocks glass. Stir ingredients. Add ice. Garnish with a lemon and orange twist and enjoy.")

cocktail_h = Cocktail.create(name: "Sazerac", 
    alcohol: alcohol_d, 
    ingredients: "3 oz Rye or Brandy. 1/2 oz Demerara syrup. 10 dashes Peychaud's Bitters. 1 ea Lemon twist. As needed Absinthe.", 
    recipe: "Combine all ingredients in mixing glass with ice. Stir. Strain into chilled rocks glass rinsed with absinthe, with no ice. Garnish with lemon twist and enjoy.")

cocktail_i = Cocktail.create(name: "Mai Tai", 
    alcohol: alcohol_e, 
    ingredients: "1 ounce white (Martinique) rum. 1 ounce dark (Jamaican) rum. 1 ounce of lime juice. ½ ounce of orgeat syrup. 2 strawberries (chopped).", 
    recipe: "Add white rum, lime juice, orgeat syrup, strawberries and ice to a cocktail shaker. Shake mixture then strain over crushed ice in Collins glass. Float dark rum on top of mixture.")

cocktail_j = Cocktail.create(name: "Pina Colada", 
    alcohol: alcohol_e, 
    ingredients: "2 oz White Rum. 2 oz Coconut Cream. 2 oz Pineapple Juice. Pineapple leaf.", 
    recipe: "Combine all ingredients, except pineapple leaf, in shaker. Add ice to fill. Shake vigorously, until shaker is frosted over. Fill hurricane glass with crushed ice. Strain cocktail into glass. Garnish with pineapple leaf and enjoy.")
