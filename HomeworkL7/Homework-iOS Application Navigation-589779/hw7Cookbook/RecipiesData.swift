//
//  RecipiesData.swift
//  hw7Cookbook
//
//  Created by Georgi Teoharov on 24/05/2018.
//  Copyright © 2018 Georgi Teoharov. All rights reserved.
//
enum TypeOfData {
    case dishName
    case recipe
    case timeToCook
    case pictureOfDish
    case favorite
    case seen
}

import Foundation

class RecipiesData {
    
    class func sortRecipies(sortBy: TypeOfData = .seen){
        
        switch sortBy {
        case .favorite, .seen:
            let sortedResults = recipies.sorted {
                (dictOne, dictTwo) -> Bool in
                let d1 = dictOne[sortBy] ?? "0".description
                let d2 = dictTwo[sortBy] ?? "0".description
                
                return d1 > d2  //the higies will be firs
                
            };
            
            recipies = sortedResults
            
        default:
            break
        }
        
    }
    static var recipies: [[TypeOfData:String]] =
        [
            [.dishName:"Bob chorba",
             .timeToCook : "1h:30min",
             .pictureOfDish: "bobchorba",
             .favorite: "",
             .recipe: """
                Bob chorba (or bob chorpa) is a hearty and comforting traditional Bulgarian bean soup that is delicately flavored with spearmint.
                Course: Soup
                Cuisine: Bulgarian, Vegan, Vegetarian
                Servings: 8 people
                Author: Mike Benayoun
                Ingredients
                
                1¼ cup dried white beans
                4 tablespoons oil
                1 onion , finely chopped
                1 carrot , finely chopped
                1 green bell pepper , finely chopped
                Salt
                Black pepper
                1½ tablespoon paprika
                2 teaspoons dried spearmint
                2 tomatoes , finely chopped
                1 bunch fresh parsley , chopped
                
                Instructions
                
                Rince the beans in cold running water. Place them in a large pot and soak them in cold water overnight.
                The following morning, discard the soaking water. Add 3 cups of water to the beans in the pot. Bring to a boil over medium heat.
                After 5 minutes, discard the water once again, leaving only the beans in the pan.
                Add 2 tablespoons of oil to the beans and fry over medium heat for 2 minutes, stirring constantly.
                Add 4 cups of water to the beans. Then lower the heat and simmer the beans until they start becoming tender, about 45 minutes.
                In the meantime, add 2 tablespoons of oil to another pan. Then add the carrots and onion. Sauté for 8 minutes.
                Add the bell pepper, tomatoes, paprika, spearmint, salt and pepper and stir well. Continue cooking for 5 minutes.
                Add the mixture to the beans and water in the other pot. Keep the soup simmering until the beans are completely cooked but remain whole, about 20 minutes. Do not overcook them.
                Serve hot with parsley or grated cheese on top.
                
                """
            ],
            [
                .dishName:"Tarator - Bulgarian Cold Cucumber Soup",
                .timeToCook : "20min",
                .pictureOfDish: "tarator",
                .favorite: "",
                .recipe: """
                “This cold soup is among Bulgarians favorite foods for the summer. It is served as a first course instead of a salad or between meals as refreshment. You might even see it served in a glass. Most men here say it goes great with a glass of cold rakiya (Bulgarian grape or fruit brandy) or Ouzo.”
                
                Ingredients
                Nutrition
                
                2 cucumbers (about 500 g or 1 lb)
                500 g plain yogurt (1 lb)
                3 -4 garlic cloves
                2 -3 tablespoons of crushed walnuts (optional)
                1 bunch fresh dill
                oil
                salt
                water (optional)

                Directions
                
                Cut the cucumbers into cubes and put them in a bowl. You may aslo grate them but it changes the look and the consistency.
                Beat the yogurt with a fork until it gets liquid and pour it over the cucumbers.
                Add the crushed garlic, the walnuts and the minced dill as well as salt and oil to taste.
                If needed add some water to make the soup as liquid as you like but take care not to make it too "thin".
                Put into the refrigerator to cool or add ice cubes.
                Serve cold.
                """
            ],
            [.dishName:"Turshia",
             .timeToCook : "5 days",
             .pictureOfDish: "trushia",
             .favorite: "",
             .recipe: """
                Pickled vegetables, a.k.a. turshia or trushia, as it is pronounced differently in different parts of Bulgaria, is an excellent accompaniment to meat dishes. Typically it is made in the late fall with the last load of vegetables picked in the home gardens. Made in huge amount, the turshia is then stored in the darkest and coldest places of the houses to last till spring. In the older times people ate only produce in season, so the typical winter diet consisted mainly of grilled pork cutlets, and home made sausages,  pork stews with potatoes, beans, pork cooked with pickled cabbage, and of course turshia. All the households in the villages had pigs and the killing and processing of the meat from the pig, usually happening around Christmas, was a pleasant occasion for family and friends gatherings and celebrations. The trushia had permanent place on the tables, used as an appetizer that people had when drinking rakia and a side dish for the meat dishes. Every family had their own recipes, or tips and tricks, and there was always a silent competition going on of who makes the most crunchy, fresh and delicious turshia.
                These days, when we eat fresh vegetables all year round, we don't make turshia very often. It happens once in a while, usually around Christmas, to follow the years-long  tradition and satisfy the cravings we usually experience.
                A friend of mine DM gave me this simple recipe for a quick turshia. It gets ready in 2-3 days. There are variations of what types of vegetables you can use. In addition to my list below, you can add regular cabbage, green tomatoes, and small sweet peppers. The original recipe recommends slightly grilling the tomatoes and peppers before adding them to the mix.
                
                
                This is what I used:
                (Adapted from the original recipe)
                
                2-3 heads cauliflower, cleaned and cut in small pieces
                8 - 10 carrots cut in 1/2 inch pieces
                5 celery stalks, cut in 1/2 inch pieces
                2 lb peppers cut in pieces. I use different colors peppers
                1 head garlic, each clove peeled and cut into 3 pieces
                1 bunch of parsley
                
                
                Marinade:
                
                300 g vegetable oil
                500 g sugar
                200 g salt
                700 g apple cider vinegar
                
                
                Procedure:
                
                Boil the marinade and leave it aside. Mix all the vegetables, with the exception of garlic and parsley, in a big pot. Pour the marinade over the vegetables. Be careful not to use very hot marinade, because the vegetables will loose their crunchiness and become mushy. Cover with plastic foil or a lid and leave it for 24 hours in a cool place.
                On the next day, add the garlic and parsley. Pack the turshia in glass jars and store in the fridge. If you live in a cold weather you can keep it outside. Usually the turshia is ready for eating in 2-3 days.
                
                
                """
                
            ],
            [.dishName:"chunky guacamole",
             .timeToCook : "10min",
             .pictureOfDish: "guacamole",
             .favorite: "",
             .recipe: """
                This is the best version of this classic dip. The ingredients are kept to a minimum, so it's as fresh-tasting as possible
                
                Ingredients
                
                1 large ripe tomato
                Tomato
                
                3 avocados
                Avocado
                
                , very ripe but not bruised
                juice 1 large lime
                Lime
                
                handful coriander, leaves and stalks chopped, plus a few leaves, roughly chopped, to serve
                1 small red onion, finely chopped
                1 chilli
                Chillies
                
                , red or green, deseeded and finely chopped
                tortilla chips, to serve
                
                Method
                
                Use a large knife to pulverise the tomato to a pulp on a board, then tip into a bowl. Halve and stone the avocados (saving a stone) and use a spoon to scoop out the flesh into the bowl with the tomato.
                
                Tip all the other ingredients into the bowl, then season with salt and pepper. Use a whisk to roughly mash everything together. If not serving straight away, sit a stone in the guacamole (this helps to stop it going brown), cover with cling film and chill until needed. Scatter with the coriander, if using, then serve with tortilla chips or spicy wedges and sour cream.
                """
            ],
            [
                .dishName:"classic hummus",
                .timeToCook : "10min",
                .pictureOfDish: "hummus",
                .favorite: "",
                .seen: "2",
                .recipe: """
                This classic hummus recipe is quick and easy to make, smooth and creamy, perfect for dipping or spreading, and it tastes SO fresh and flavorful!
                
                Ingredients:
                
                1 (15 oz.) can chickpeas (garbanzo beans), rinsed and drained
                2 cloves garlic, peeled and smashed
                3 tablespoons tahini
                1-2 tablespoons lemon juice
                2 tablespoons extra virgin olive oil
                1/2 teaspoon ground cumin
                pinch of salt and freshly-cracked black pepper (to taste)
                1/4 cup water, or more if needed
                optional topping ideas: extra drizzle of olive oil, chopped fresh parsley, crushed red pepper flakes, smoked paprika, toasted pine nuts, chopped roasted red peppers, basil pesto
                
                Directions:
                
                Add first seven ingredients (chickpeas thru salt/pepper) to a food processor, and blend until smooth. Add in the water and continue blending until the hummus reaches your desired consistency, adding additional water if needed.
                
                Garnish with optional toppings and serve immediately, or refrigerate in a sealed container for up to 3 days.

                """
            ],
            [
                .dishName:"Basil Vinaigrette",
                .timeToCook : "10min",
                .pictureOfDish: "basilVinaigrette",
                .favorite: "",
                .recipe: """
                This Basil Vinaigrette recipe is quick and easy to make, and bursting with the best fresh basil flavor.  Perfect for drizzling on salads, pizzas, pastas, soups, grilled meat, veggies and more!
                
                
                Ingredients
                
                1 small garlic clove 1 cup packed basil leaves, coarsely chopped 1/4 cup extra-virgin olive oil 1 1/2 tablespoons Champagne vinegar Pinch of crushed red pepper Salt and freshly ground black pepper
                

                How to Make It
                Step
                
                In a food processor, pulse the garlic until chopped. Add the basil and pulse until finely chopped. Add the oil, vinegar and crushed red pepper and process until smooth. Season with salt and pepper.
                
                
                Notes
                
                Great With Heirloom tomato salad, pasta salad, panzanella salad and grilled fish, chicken or lamb.


                """
            ],
            [
                .dishName:"Lentil Soup",
                .timeToCook : "1h:05min",
                .pictureOfDish: "lentilSoup",
                .favorite: "",
                .recipe: """
                This soup is hearty and packed full of protein and flavour. It's also super-easy to make. Lentils are simmered with vegetables and seasonings. Serve with crusty bread, if desired.
                
                Ingredients
                Serves: 6
                
                1 onion, chopped
                4 tablespoons olive oil
                2 carrots, diced
                2 sticks celery, chopped
                2 cloves garlic, finely chopped
                1 teaspoon dried oregano
                1 bay leaf
                
                1 teaspoon dried basil
                385g dried lentils
                400g passata
                2 litres water
                15g spinach, rinsed and thinly sliced
                2 tablespoons vinegar
                salt and pepper to taste

                Method
                In a large soup pot, heat oil over medium heat. Add onions, carrots and celery; cook and stir until onion is tender. Stir in garlic, bay leaf, oregano and basil; cook for 2 minutes.
                Stir in lentils and add water and passata. Bring to the boil. Reduce heat and simmer for at least 1 hour.
                When ready to serve, stir in spinach and cook until it wilts. Stir in vinegar and season to taste with salt and pepper and more vinegar if desired.

                """
            ],
            [
                .dishName:"Golden beer-battered fish with chips",
                .timeToCook : "1h:10min",
                .pictureOfDish: "fishAndChips",
                .favorite: "",
                .recipe: """
                Cooking cod, hake or haddock in a super-crispy batter made from sparkling water steams the fish so it's really moist
                
                Ingredients
                
                For the fish
                
                50g plain flour
                50g cornflour
                1 tsp baking powder
                Baking powder
                
                turmeric
                Turmeric
                
                75ml lager beer
                75ml sparkling water
                about 1 litre sunflower oil
                Sunflower oil
                
                Sunflower oil, for frying
                400g fillet sustainable cod, hake or haddock
                Haddock, halved
                
                For the chips
                
                750g potatoes
                Potato
                
                , Maris Piper or Desiree, peeled and sliced into thick chips
                2 tbsp plain flour
                2 tbsp sunflower oil
                
                Method
                
                Combine the flour, cornflour, baking powder and turmeric in a large bowl, season, then spoon 1 tbsp onto a plate and set aside. Gradually pour the beer and water into the bowl, stirring with a wooden spoon until you have a smooth, lump-free batter. Leave to rest for 30 mins while you prepare the chips.
                
                Heat oven to 200C/fan 180C/gas 6. Boil a large pan of water, then add the chipped potatoes and boil for 2-3 mins until the outsides are just tender but not soft. drain well, then tip onto a large baking tray with the flour, oil and some salt. Gently toss together until all the potatoes are evenly coated and the flour is no longer dusty. Roast for 30 mins, turning occasionally, until the chips are golden and crisp.
                
                To cook the fish, heat the 1 litre oil in a deep saucepan until a drop of batter sizzles and crisps up straight away. Pat the fish dry with kitchen paper, then toss it in the reserved turmeric flour mix. Shake off any excess, then dip into the batter. Carefully lower each fillet into the hot oil and fry for 6-8 mins – depending on the thickness of the fish – until golden and crisp. Using a large slotted spoon, lift out the fish, drain on kitchen paper, then sprinkle with salt. Serve with the hot chips and Homemade tomato sauce (see 'goes well with').
                """
            ],
            [
                .dishName:"Mixed-bean chilli with wedges",
                .timeToCook : "50min",
                .pictureOfDish: "beansChilliAndWedges",
                .recipe: """
                A warming bowl of meat-free comfort food. Make extra for the freezer
                
                Ingredients
                
                4 medium baking potatoes, unpeeled, each cut into 8 wedges
                4 tsp olive oil
                olive oil
                
                1 red onion, roughly chopped
                1 yellow pepper
                Peppers
                
                1 tbsp Cajun spice mix
                2 x 410g/14oz cans mixed pulses in water, rinsed and drained
                400g can chopped tomatoes
                150ml vegetable stock
                1 tbsp dark chocolate
                Dark chocolate soup pots with double cream in spoons
                
                , chopped
                4 tbsp reduced-fat soured cream
                
                Method
                
                Heat oven to 220C/200C fan/gas 7. Toss the potato wedges in 2 tsp oil and spread out in a single layer on a large baking tray. Cook for 30-35 mins, turning halfway, until tender and golden brown.
                
                Meanwhile, for the chilli, put the remaining oil into a casserole dish and fry the onion and pepper for 5 mins. Add Cajun spice, pulses, tomatoes and stock. Cover and simmer for 15-20 mins. Remove casserole from the heat and stir in the chocolate until melted. Ladle the chilli into bowls, top each with 1 tbsp soured cream and serve with the wedges.
                """
            ],
            [
                .dishName:"Ultimate chocolate cake",
                .timeToCook : "1h:30min",
                .pictureOfDish: "ultimateCholateCake",
                .recipe: """
                Indulge yourself with this heavenly chocolate cake recipe that is beautifully moist, rich and fudgy. Perfect for a celebration or an afternoon tea
                
                Ingredients
                
                For the chocolate cake
                
                200g dark chocolate
                Dark chocolate soup pots with double cream in spoons
                
                Dark chocolate soup pots with double cream in spoons
                
                (about 60% cocoa solids), chopped
                200g butter
                Butter
                
                , cubed
                1 tbsp instant coffee granules
                85g self-raising flour
                85g plain flour
                ¼ tsp bicarbonate of soda
                Bicarbonate of soda
                
                200g light muscovado sugar
                200g golden caster sugar
                25g cocoa powder
                3 medium eggs
                75ml buttermilk
                Buttermilk pancake mixture in bowl with whisk
                
                grated chocolate
                Chocolate
                
                or curls, to decorate
                
                For the ganache
                
                200g dark chocolate
                (about 60% cocoa solids), chopped
                300ml double cream
                2 tbsp golden caster sugar
                
                Method
                
                Heat the oven to 160C/fan140C/gas 3. Butter and line a 20cm round cake tin (7.5cm deep).
                
                Put the dark chocolate in a medium pan with the butter. Mix 1 tbsp instant coffee granules into 125ml cold water and pour into the pan. Warm through over a low heat just until everything is melted – don’t overheat. Or melt in the microwave for about 5 minutes, stirring halfway through.
                
                Mix the self-raising flour, plain flour, bicarbonate of soda, light muscovado sugar and golden caster sugar with the cocoa powder and squash out any lumps. Beat the eggs with the buttermilk.
                
                Pour the melted chocolate mixture and the egg mixture into the flour mixture and stir everything to a smooth, quite runny consistency.
                
                Pour this into the tin and bake for 1hr 25 – 1hr 30 mins. If you push a skewer into the centre it should come out clean and the top should feel firm (don’t worry if it cracks a bit). Leave to cool in the tin (don’t worry if it dips slightly), then turn out onto a wire rack to cool completely. Cut the cold cake horizontally into three.
                
                To make the ganache, put the dark chocolate in a bowl.  Pour the cream into a pan, add the golden caster sugar and heat until it is about to boil. Take off the heat and pour it over the chocolate. Stir until the chocolate has melted and the mixture is smooth. Cool until it is a little thicker but still pourable.
                
                Sandwich the layers together with just a little of the ganache. Pour the rest over the cake letting it fall down the sides and smooth over any gaps with a palette knife. Decorate with grated chocolate or a pile of chocolate curls. The cake keeps moist and gooey for 3-4 days.
                """
            ],
            [
                .dishName:"Gnocchi with lemon & chive pesto",
                .timeToCook : "10min",
                .pictureOfDish: "gnocchiLemonChivePesto",
                .recipe: """
                Potato gnocchi make a welcome change from pasta. Give them a go in this simple veggie supper for two
                
                Ingredients
                
                1 garlic clove, finely chopped
                small bunch parsley
                Parsley
                
                , finely chopped
                small bunch chives, snipped
                2 tbsp toasted pine nuts, roughly chopped
                2 tbsp grated parmesan
                Parmesan
                
                , or vegetarian alternative, plus extra for serving
                zest and juice 1 lemon
                Lemon
                
                4 tbsp olive oil
                olive oil
                
                500g pack gnocchi
                
                Method
                
                Place the garlic, herbs, pine nuts, cheese and lemon zest in a small bowl, season well, then stir in the olive oil and lemon juice. Set aside.
                
                Cook the gnocchi in a pan of salted boiling water following pack instructions, then drain well. Tip into a serving bowl and toss through the pesto. Serve with extra grated Parmesan, if you like.
                """
            ],
            [
                .dishName:"Green fritters",
                .timeToCook : "30min",
                .pictureOfDish: "greenFritters",
                .recipe: """
                Enjoy a healthy breakfast that will keep you satisfied for longer, with eggs and vibrant green broccoli and courgettes for protein, vitamins and minerals
                
                Ingredients
                
                140g courgettes
                Courgette
                
                , grated
                3 medium eggs
                Eggs
                
                85g broccoli
                Broccoli
                
                florets, finely chopped
                small pack dill, roughly chopped
                3 tbsp gluten-free flour or rice flour
                2 tbsp sunflower oil
                Sunflower oil, for frying
                
                Method
                
                Squeeze the courgettes between your hands to remove any excess moisture, or tip onto a clean tea towel and twist it to squeeze out the moisture.
                
                Beat the eggs in a bowl, add the broccoli, courgettes and most of the dill, and mix together. Add the flour, mix again and season.
                
                Heat the oil in a non-stick frying pan. Put a large serving spoon of the mixture in the pan, then add 2 more spoonfuls so you have 3 fritters. Leave for 3-4 mins on a medium heat until golden brown on one side and solid enough for you to flip over, then flip over and leave to go golden on the other side. Repeat to make 3 more fritters (there is no need to add any more oil to the pan after the first batch). Scatter with the remaining dill to serve.
                """
            ],
            [
                .dishName:"Broccoli and kale green soup",
                .timeToCook : "35min",
                .pictureOfDish: "broccoliKaleGreenSoup",
                .recipe: """
                This super healthy soup combines broccoli and kale with ginger, coriander and turmeric for a nutrient dense and low-fat lunch
                
                Ingredients
                
                500ml stock, made by mixing 1 tbsp bouillon powder and boiling water in a jug
                1 tbsp sunflower oil
                Sunflower oil
                
                2 garlic cloves, sliced
                thumb-sized piece ginger
                Ginger
                
                , sliced
                ½ tsp ground coriander
                3cm/1in piece fresh turmeric
                Turmeric
                
                root, peeled and grated, or ½ tsp ground turmeric
                pinch of pink Himalayan salt
                200g courgettes
                Courgette
                
                , roughly sliced
                85g broccoli
                Broccoli
                
                100g kale
                Kale, chopped
                1 lime
                Lime
                
                , zested and juiced
                small pack parsley
                Parsley
                
                , roughly chopped, reserving a few whole leaves to serve
                
                Method
                
                Put the oil in a deep pan, add the garlic, ginger, coriander, turmeric and salt, fry on a medium heat for 2 mins, then add 3 tbsp water to give a bit more moisture to the spices.
                
                Add the courgettes, making sure you mix well to coat the slices in all the spices, and continue cooking for 3 mins. Add 400ml stock and leave to simmer for 3 mins.
                
                Add the broccoli, kale and lime juice with the rest of the stock. Leave to cook again for another 3-4 mins until all the vegetables are soft.
                
                Take off the heat and add the chopped parsley. Pour everything into a blender and blend on high speed until smooth. It will be a beautiful green with bits of dark speckled through (which is the kale). Garnish with lime zest and parsley.
                """
            ],
            [
                .dishName:"Noodle jar salad",
                .timeToCook : "20min",
                .pictureOfDish: "noodleJarSalad",
                .recipe: """
                Make this noodle jar salad before you head to work for a nutritious lunch. It contains mango, carrot and peanuts plus a flavourful Asian-style dressing
                
                Ingredients
                
                50g instant rice noodles
                juice ½ lime
                Lime
                
                1 tsp fish sauce
                Fish sauce
                
                50g mango pieces
                1 carrot
                Carrot
                
                ½ small pack mint
                Mint
                
                ½ small pack coriander
                1 tbsp salted peanuts
                pinch chilli flakes
                

                Method
                
                Put 50g instant rice noodles in a bowl and cover with boiling water, leave to stand for 3 mins, drain then rinse in cold water and drain well. Squeeze juice ½ lime into a jar along with 1 tsp fish sauce. Put 50g mango pieces on top, then add the noodles. Slice 1 carrot into ribbons with a vegetable peeler and pile on top of the noodles.
                
                Fill the rest of the jar with ½ small pack mint, ½ small pack coriander, 1 tbsp salted peanuts and pinch chilli flakes. Put the lid on and store in the fridge for up to one day. When you want to serve, tip everything out into a bowl and mix well. Add soy sauce to taste, if you like.
                """
            ],
            [
                .dishName:"Rhubarb & custard meringue tart",
                .timeToCook : "3h:30min",
                .pictureOfDish: "rhubarbCustardMeringueTart",
                .recipe: """
                Bake our fabulous meringue tart that boasts the classic combination of rhubarb and custard. It makes a great dinner party centrepiece
                
                Ingredients
                
                For the pastry
                
                150g plain flour, plus extra for dusting
                1 tsp golden caster sugar
                1 tsp ground ginger
                Ginger
                
                100g unsalted butter
                Butter
                
                , chilled and cubed
                
                For the filling
                
                800g rhubarb
                Rhubarb
                
                , chopped into 4cm lengths
                300g golden caster sugar
                1 vanilla pod, split
                ½ an orange
                Orange
                
                , zested and juiced
                2 egg yolks
                100ml double cream
                100ml whole milk
                
                For the Italian meringue
                
                2 egg whites
                ½ tsp cream of tartar
                
                Method
                
                To make the pastry, sift the flour into a bowl with a pinch of salt, sugar and ground ginger. Rub in the butter until you have a breadcrumb consistency, then add 30-50ml of cold water, stirring with a flat-bladed knife until the crumbs form a dough. Knead the pastry briefly until smooth, then wrap in cling film and refrigerate for 30 mins.
                
                Heat oven to 200C/180C fan/gas 6. Line a baking tray with baking parchment. Arrange the rhubarb in the tray in a neat layer, scatter over 250g of the sugar and scrape out the vanilla pod over it. Add the orange juice and zest and cover tightly with foil. Bake for 20-30 mins, until the rhubarb is soft. Remove from the oven and cool. Strain off the syrup using a sieve – you’ll need this later for the meringue.
                
                Roll out the pastry on a floured surface. Line a 20cm tart tin, leaving an overhang. Pop into the fridge to chill for 30 mins. Once chilled, cover the case with baking parchment, fill with baking beans and blind bake for 25 mins, until golden. Remove the baking beans and bake for 5 mins more to crisp up the bottom. Allow to cool, then remove from the tin to a plate.
                
                For the custard, combine the remaining sugar with the egg yolks and whisk vigorously, until really pale and frothy. Gently heat the cream and milk in a pan until it’s almost boiling. Remove from the heat and briefly allow to cool before pouring a little of the cream mix onto the egg yolks and stirring to combine. Pour the egg yolk mix back into the pan and heat gently, stirring with a wooden spoon. Cook until the mixture coats the back of a spoon (about 5 mins). Remove from the heat and pour into a jug or mixing bowl.
                
                Divide the rhubarb in half, reserving the pinkest, prettiest lengths. Blitz the other half to a purée in a food processor and add to the custard. Fill the tart and top with the rhubarb. Chill until needed.
                
                To make the Italian meringue, measure out 160g of the rhubarb poaching syrup and bring to the boil. You need to it be about 118C (this will cook the egg whites to set the meringue). In the bowl of a stand mixer, whisk the egg whites until they form soft peaks. Add the cream of tartar and mix. When the syrup has reached 118C on a cooking thermometer, carefully pour it down the sides of the stand mixer and whisk until you have a smooth, fluffy meringue. Fill a piping bag with a medium star nozzle and pipe little meringue kisses over the tart. Use a blowtorch to gently scorch the meringue and serve straight away.
                """
            ],
            [
                .dishName:"Gazpacho with runner bean tempura & pickled coriander seeds",
                .timeToCook : "40min",
                .pictureOfDish: "gazpachoBeanPickledCorianderSeeds",
                .recipe: """
                We love the contrast of flavours, textures and temperatures in this gazpacho served with runner bean tempura and pickled coriander seeds. A fabulous starter
                
                Ingredients
                
                For the pickled coriander seeds
                
                25ml white wine vinegar
                1 tsp sherry vinegar
                1 tbsp caster sugar
                2 tsp coriander seeds
                
                For the gazpacho
                
                1kg tomatoes
                Tomato
                
                200g cucumber, peeled and deseeded
                2 tsp capers
                Capers
                
                2 garlic cloves
                1 red chilli, deseeded
                2 tbsp extra virgin olive oil
                1-2 tbsp sherry vinegar
                
                For the runner bean tempura
                
                150ml vegetable oil
                100g runner beans
                Runner bean
                
                , stringed, cut in half, then sliced lengthways (discarding tough beans from inside)
                90g plain flour
                ½ tsp cumin seeds
                ½ egg
                Eggs
                
                , beaten
                200ml ice-cold sparkling water
                

                Method
                
                To make the pickled coriander seeds, put the vinegars in a small pan with the sugar and 25ml water. Bring to the boil, drop in the coriander seeds, turn off the heat and leave to infuse.
                
                To peel the tomatoes, lightly score a cross in the top of each one, place in a large bowl and cover with boiling water for 1 min. Drain and peel. Cut each one into quarters and use a knife to scrape away the seeds. Don’t discard what you remove – sieve out the seeds and use the juice in the next step.
                
                Blitz the tomatoes, cucumber, capers, garlic, chilli and 2 tsp sea salt in a food processor. Pour into a bowl and chill for a couple of hours for the flavours to meld, then add the olive oil and stir. Add 1 tbsp of the sherry vinegar and taste. If it needs more to bring out the flavours, then add another tbsp. Divide between bowls and chill the soup while you make the runner bean tempura.
                
                Pour the vegetable oil into a high-sided saucepan and set over a medium heat to get up to temperature (about 180C) while you make the batter.
                
                To make the batter, put the flour, a pinch of salt and the cumin seeds in a bowl and stir. Add the beaten egg, then pour in the water. Gently stir the mixture, taking care not to over-mix it – a few lumps help give tempura its texture. Test the temperature of the oil by dropping in a little bit of batter. It should bubble and float to the top. If it browns immediately, reduce the heat.
                
                Mix the runner beans into the batter and then fry in batches, removing with a slotted spoon once they’re crisp, golden and just starting to brown. Drain on kitchen paper and season. Top each bowl of soup with some crispy runner beans, and spoon over a little of the drained, pickled coriander seeds.
                """
            ],
            
            
    ]
    
}
