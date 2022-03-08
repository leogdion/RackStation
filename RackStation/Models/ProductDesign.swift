import Foundation

struct ProductDesign: Codable, Identifiable {
    static let defaultURL = URL(string: "https://picsum.photos/300")!
    static let productNames = """
    Alize Sunset
    Almonds Ground Blanched
    Amaretto
    Anchovy Fillets
    Appetizer - Asian Shrimp Roll
    Appetizer - Assorted Box
    Appetizer - Crab And Brie
    Appetizer - Mini Egg Roll, Shrimp
    Appetizer - Shrimp Puff
    Appetizer - Smoked Salmon / Dill
    Appetizer - Veg Assortment
    Apple - Custard
    Apple - Fuji
    Apricots - Halves
    Artichoke - Hearts, Canned
    Asparagus - White, Canned
    Aspic - Amber
    Aspic - Clear
    Assorted Desserts
    Avocado
    Bacardi Mojito
    Bacon Strip Precooked
    Bag - Clear 7 Lb
    Bag - Regular Kraft 20 Lb
    Bagel - 12 Grain Preslice
    Bagel - Everything Presliced
    Bagel - Whole White Sesame
    Bagels Poppyseed
    Bamboo Shoots - Sliced
    Banana - Leaves
    Bandage - Finger Cots
    Bar - Sweet And Salty Chocolate
    Bar Special K
    Barley - Pearl
    Barramundi
    Basil - Dry, Rubbed
    Bay Leaf
    Beans - Black Bean, Canned
    Beans - Butter Lrg Lima
    Beans - Green
    Beans - Long, Chinese
    Beans - Navy, Dry
    Beans - Turtle, Black, Dry
    Beef - Bones, Cut - Up
    Beef - Cooked, Corned
    Beef - Diced
    Beef - Ground Lean Fresh
    Beef - Ground Medium
    Beef - Inside Round
    Beef - Rib Roast, Capless
    Beef - Short Loin
    Beef - Short Ribs
    Beef - Sushi Flat Iron Steak
    Beef - Tender Tips
    Beef - Tenderlion, Center Cut
    Beef - Tenderloin - Aa
    Beef - Tenderloin Tails
    Beef - Tongue, Fresh
    Beef - Top Butt
    Beef Cheek Fresh
    Beef Dry Aged Tenderloin Aaa
    Beef Tenderloin Aaa
    Beef Wellington
    Beer - Alexander Kieths, Pale Ale
    Beer - Creemore
    Beer - Heinekin
    Beer - Labatt Blue
    Beer - Muskoka Cream Ale
    Beer - Upper Canada Lager
    Beets - Pickled
    Berry Brulee
    Blue Curacao - Marie Brizard
    Bok Choy - Baby
    Brandy Cherry - Mcguinness
    Bread - Assorted Rolls
    Bread - Bagels, Plain
    Bread - Ciabatta Buns
    Bread - Crusty Italian Poly
    Bread - Focaccia Quarter
    Bread - Hamburger Buns
    Bread - Italian Corn Meal Poly
    Bread - Italian Sesame Poly
    Bread - Kimel Stick Poly
    Bread - Multigrain
    Bread - Multigrain, Loaf
    Bread - Onion Focaccia
    Bread - Pain Au Liat X12
    Bread - Petit Baguette
    Bread - Pita
    Bread - Pita, Mini
    Bread - Pumpernickel
    Bread - Pumpernickle, Rounds
    Bread - Raisin Walnut Oval
    Bread - Raisin Walnut Pull
    Bread - Roll, Canadian Dinner
    Bread - Rolls, Rye
    Bread - Rosemary Focaccia
    Bread - Triangle White
    Bread - White, Unsliced
    Bread Country Roll
    Buffalo - Short Rib Fresh
    Buffalo - Striploin
    Buffalo - Tenderloin
    Bulgar
    Burger Veggie
    Butter - Pod
    Butter - Salted
    Butter - Salted, Micro
    Butter Sweet
    C - Plus, Orange
    Cabbage - Green
    Cabbage - Savoy
    Cactus Pads
    Cake - Bande Of Fruit
    Cake - Dulce De Leche
    Cake - Mini Potato Pancake
    Cake Circle, Foil, Scallop
    Cake Circle, Paprus
    Campari
    Canada Dry
    Capon - Whole
    Carbonated Water - Cherry
    Carbonated Water - Orange
    Cardamon Ground
    Carroway Seed
    Cassis
    Catfish - Fillets
    Celery Root
    Chambord Royal
    Cheese - Augre Des Champs
    Cheese - Bakers Cream Cheese
    Cheese - Boursin, Garlic / Herbs
    Cheese - Brick With Onion
    Cheese - Brick With Pepper
    Cheese - Brie, Cups 125g
    Cheese - Camembert
    Cheese - Cheddar, Old White
    Cheese - Comte
    Cheese - Cottage Cheese
    Cheese - Cream Cheese
    Cheese - Fontina
    Cheese - Goat
    Cheese - Gouda
    Cheese - Gouda Smoked
    Cheese - Mascarpone
    Cheese - Mozzarella
    Cheese - Parmesan Grated
    Cheese - Parmigiano Reggiano
    Cheese - Ricotta
    Cheese - St. Andre
    Cheese - Swiss
    Cheese - Taleggio D.o.p.
    Cheese Cheddar Processed
    Cheese Cloth
    Cheese Cloth No 100
    Chef Hat 20cm
    Chef Hat 25cm
    Cherries - Frozen
    Cherries - Maraschino,jar
    Chervil - Fresh
    Chevere Logs
    Chicken - Base, Ultimate
    Chicken - Leg, Fresh
    Chicken - Livers
    Chicken - Tenderloin
    Chicken - Thigh, Bone In
    Chicken - White Meat With Tender
    Chicken - White Meat, No Tender
    Chicken - Whole Fryers
    Chicken - Whole Roasting
    Chicken - Wings, Tip Off
    Chicken Thigh - Bone Out
    Chinese Foods - Chicken
    Chinese Foods - Chicken Wing
    Chinese Foods - Plain Fried Rice
    Chinese Lemon Pork
    Chocolate - Chips Compound
    Chocolate - Compound Coating
    Chocolate - Dark
    Chocolate - Dark Callets
    Chocolate - Milk Coating
    Chocolate - White
    Chocolate Bar - Coffee Crisp
    Chocolate Bar - Oh Henry
    Chutney Sauce - Mango
    Cinnamon Rolls
    Clams - Littleneck, Whole
    Clementine
    Cloves - Ground
    Cocoa Butter
    Cocoa Feuilletine
    Coconut - Shredded, Unsweet
    Cod - Salted, Boneless
    Coffee - Cafe Moreno
    Coffee - Colombian, Portioned
    Coffee - Decaffeinato Coffee
    Coffee - Espresso
    Coffee - Flavoured
    Coffee - Hazelnut Cream
    Coffee - Ristretto Coffee Capsule
    Coffee Beans - Chocolate
    Cognac - Courvaisier
    Compound - Orange
    Compound - Rum
    Compound - Strawberry
    Container - Foam Dixie 12 Oz
    Containter - 3oz Microwave Rect.
    Cookie - Oatmeal
    Cookie Double Choco
    Cookie Dough - Oatmeal Rasin
    Cookies - Assorted
    Cookies - Englishbay Oatmeal
    Cookies Oatmeal Raisin
    Coriander - Seed
    Corn - Mini
    Corn Meal
    Cornflakes
    Cornish Hen
    Cornstarch
    Couscous
    Crab - Claws, Snow 16 - 24
    Crab Meat Claw Pasteurise
    Crackers - Graham
    Crackers - Trio
    Crackers - Water
    Cranberries - Fresh
    Cranberries - Frozen
    Cream - 18%
    Cream - 35%
    Creme De Menthe Green
    Croissants Thaw And Serve
    Crush - Grape, 355 Ml
    Cucumber - Pickling Ontario
    Cup - 3.5oz, Foam
    Cup - 8oz Coffee Perforated
    Cup - Paper 10oz 92959
    Cup - Translucent 7 Oz Clear
    Curry Paste - Green Masala
    Curry Powder
    Curry Powder Madras
    Dates
    Dc - Frozen Momji
    Dc Hikiage Hira Huba
    Devonshire Cream
    Dill Weed - Fresh
    Dip - Tapenade
    Doilies - 12, Paper
    Doilies - 7, Paper
    Doilies - 8, Paper
    Dr. Pepper - 355ml
    Dragon Fruit
    Drambuie
    Dry Ice
    Easy Off Oven Cleaner
    Ecolab - Hand Soap Form Antibac
    Ecolab - Lime - A - Way 4/4 L
    Ecolab Silver Fusion
    Eggplant - Baby
    Eggplant - Regular
    Eggplant Italian
    Eggroll
    Eggs - Extra Large
    Energy - Boo - Koo
    English Muffin
    Everfresh Products
    Extract - Raspberry
    Extract Vanilla Pure
    Fennel
    Fennel - Seeds
    Fib N9 - Prague Powder
    Fish - Bones
    Flavouring - Raspberry
    Flax Seed
    Flour - Buckwheat, Dark
    Flour - Cake
    Flour - Corn, Fine
    Flour - Fast / Rapid
    Flour - Masa De Harina Mexican
    Flour - Pastry
    Flour - Rye
    Flour - Strong
    Flour - Strong Pizza
    Flour - Whole Wheat
    Flour Pastry Super Fine
    Flower - Daisies
    Flower - Potmums
    Foil - 4oz Custard Cup
    Foil - Round Foil
    Fond - Neutral
    Food Colouring - Green
    Food Colouring - Pink
    French Kiss Vanilla
    French Pastries
    French Pastry - Mini Chocolate
    Galliano
    Garbage Bag - Clear
    Gatorade - Fruit Punch
    Gatorade - Lemon Lime
    Ginger - Crystalized
    Glass - Juice Clear 5oz 55005
    Goat - Whole Cut
    Godiva White Chocolate
    Grand Marnier
    Grapefruit - White
    Grapes - Green
    Grapes - Red
    Hagen Daza - Dk Choocolate
    Halibut - Steaks
    Halibut - Whole, Fresh
    Ham - Cooked
    Ham - Procutinni
    Higashimaru Usukuchi Soy
    Hipnotiq Liquor
    Hold Up Tool Storage Rack
    Honey - Comb
    Hot Choc Vending
    Hot Chocolate - Individual
    Huck Towels White
    Huck White Towels
    Hummus - Spread
    Ice - Clear, 300 Lb For Carving
    Ice Cream - Fudge Bars
    Ice Cream - Turtles Stick Bar
    Ice Cream - Vanilla
    Ice Cream Bar - Drumstick
    Ice Cream Bar - Oreo Sandwich
    Icecream - Dibs
    Icecream - Dstk Cml And Fdg
    Icecream - Dstk Strw Chseck
    Iced Tea Concentrate
    Island Oasis - Ice Cream Mix
    Island Oasis - Mango Daiquiri
    Island Oasis - Sweet And Sour Mix
    Jack Daniels
    Jello - Assorted
    Jicama
    Jolt Cola
    Jolt Cola - Red Eye
    Juice - Clamato, 341 Ml
    Juice - Cranberry, 341 Ml
    Juice - Grape, White
    Juice - Grapefruit, 341 Ml
    Juice - Happy Planet
    Juice - Lagoon Mango
    Juice - Lemon
    Juice - Mango
    Juice - Orange, 341 Ml
    Juice - Orangina
    Juice - Pineapple, 341 Ml
    Juice - V8, Tomato
    Juice Peach Nectar
    Kaffir Lime Leaves
    Kahlua
    Kale - Red
    Kellogs Cereal In A Cup
    Kiwano
    Knife Plastic - White
    Kohlrabi
    Kolrabi
    Lady Fingers
    Lamb - Leg, Bone In
    Lamb - Racks, Frenched
    Lamb - Sausage Casings
    Lamb - Whole Head Off
    Lamb Shoulder Boneless Nz
    Lamb Tenderloin Nz Fr
    Lambcasing
    Langers - Cranberry Cocktail
    Laundry - Bag Cloth
    Lemon Tarts
    Lentils - Green, Dry
    Lettuce - Boston Bib
    Lettuce - Lambs Mash
    Lettuce - Radicchio
    Lettuce - Romaine, Heart
    Lid - 10,12,16 Oz
    Lid - 16 Oz And 32 Oz
    Lid - High Heat, Super Clear
    Lid - Translucent, 3.5 And 6 Oz
    Lid Tray - 12in Dome
    Limes
    Liners - Baking Cups
    Liqueur Banana, Ramazzotti
    Lobster - Baby, Boiled
    Lobster - Canned Premium
    Lobster - Live
    Longan
    Longos - Assorted Sandwich
    Longos - Burritos
    Longos - Cheese Tortellini
    Longos - Chicken Curried
    Longos - Greek Salad
    Longos - Grilled Veg Sandwiches
    Longos - Lasagna Beef
    Longos - Penne With Pesto
    Lotus Leaves
    Lotus Root
    Lychee - Canned
    Macaroons - Two Bite Choc
    Mackerel Whole Fresh
    Magnotta - Bel Paese White
    Magnotta Bel Paese Red
    Mangoes
    Marsala - Sperone, Fine, D.o.c.
    Mcguinness - Blue Curacao
    Melon - Watermelon, Seedless
    Milk - 1%
    Milk - 2%
    Milk - Chocolate 250 Ml
    Mince Meat - Filling
    Miso - Soy Bean Paste
    Miso Paste White
    Mix - Cocktail Ice Cream
    Mix Pina Colada
    Momiji Oroshi Chili Sauce
    Mop Head - Cotton, 24 Oz
    Mortadella
    Mousse - Mango
    Muffin - Banana Nut Individual
    Muffin - Blueberry Individual
    Muffin - Mix - Creme Brule 15l
    Muffin - Mix - Mango Sour Cherry
    Muffin Batt - Carrot Spice
    Muffin Carrot - Individual
    Muffin Chocolate Individual Wrap
    Muffin Hinge - 211n
    Muffin Hinge Container 6
    Muffin Mix - Chocolate Chip
    Muffin Mix - Raisin Bran
    Muffin Orange Individual
    Mushroom - Enoki, Fresh
    Mushroom - Lg - Cello
    Mushroom - Trumpet, Dry
    Mushroom - White Button
    Mustard - Dry, Powder
    Mustard - Pommery
    Nantucket - Orange Mango Cktl
    Nantucket Apple Juice
    Nantucket Cranberry Juice
    Nantucket Pine Orangebanana
    Nantuket Peach Orange
    Napkin - Beverage 1 Ply
    Napkin - Dinner, White
    Nescafe - Frothy French Vanilla
    Nestea - Ice Tea, Diet
    Nestea - Iced Tea
    Noodles - Steamed Chow Mein
    Nori Sea Weed - Gold Label
    Nut - Almond, Blanched, Ground
    Nut - Almond, Blanched, Sliced
    Nut - Cashews, Whole, Raw
    Nut - Hazelnut, Ground, Natural
    Nut - Macadamia
    Nut - Peanut, Roasted
    Nut - Pecan, Halves
    Octopus - Baby, Cleaned
    Oil - Canola
    Oil - Coconut
    Oil - Cooking Spray
    Oil - Food, Lacquer Spray
    Oil - Margarine
    Oil - Peanut
    Oil - Shortening,liqud, Fry
    Oil - Truffle, Black
    Olives - Kalamata
    Olives - Morracan Dired
    Olives - Nicoise
    Olives - Stuffed
    Onion - Dried
    Onions - Dried, Chopped
    Onions - Green
    Onions - Vidalia
    Onions - White
    Onions Granulated
    Orange - Canned, Mandarin
    Orange Roughy 4/6 Oz
    Oranges - Navel, 72
    Otomegusa Dashi Konbu
    Oven Mitt - 13 Inch
    Pail - 15l White, With Handle
    Pail With Metal Handle 16l White
    Pancetta
    Paper Towel Touchless
    Parsley - Dried
    Pasta - Agnolotti - Butternut
    Pasta - Fett Alfredo, Single Serve
    Pasta - Fettuccine, Egg, Fresh
    Pasta - Fusili Tri - Coloured
    Pasta - Linguini, Dry
    Pasta - Orecchiette
    Pasta - Penne, Rigate, Dry
    Pasta - Rotini, Colour, Dry
    Pasta - Tortellini, Fresh
    Pastrami
    Pastry - Baked Scones - Mini
    Pastry - Chocolate Chip Muffin
    Pastry - Key Limepoppy Seed Tea
    Pastry - Mini French Pastries
    Pate - Cognac
    Pate - Liver
    Pate - Peppercorn
    Pate Pans Yellow
    Pea - Snow
    Pear - Halves
    Pears - Bartlett
    Pears - Fiorelle
    Peas - Frozen
    Pectin
    Pepper - Black, Ground
    Pepper - Chilli Seeds Mild
    Pepper - Chillies, Crushed
    Pepper - Chipotle, Canned
    Pepper - Julienne, Frozen
    Pepper - Paprika, Hungarian
    Pepper - Red Chili
    Pepper - Red Thai
    Pepper - Roasted Red
    Pepper - White, Whole
    Pepper - Yellow Bell
    Peppercorns - Green
    Peppercorns - Pink
    Pepperoni Slices
    Petite Baguette
    Pickerel - Fillets
    Pike - Frozen Fillet
    Pineapple - Golden
    Placemat - Scallop, White
    Plate - Foam, Bread And Butter
    Pomegranates
    Pork - Back, Long Cut, Boneless
    Pork - Backfat
    Pork - Backs - Boneless
    Pork - Bacon Cooked Slcd
    Pork - Bacon, Sliced
    Pork - Belly Fresh
    Pork - Ham Hocks - Smoked
    Pork - Inside
    Pork - Side Ribs
    Pork - Suckling Pig
    Pork Casing
    Pork Loin Cutlets
    Pork Salted Bellies
    Potatoes - Idaho 100 Count
    Potatoes - Purple, Organic
    Potatoes - Yukon Gold, 80 Ct
    Praline Paste
    Puree - Passion Fruit
    Puree - Strawberry
    Quail - Whole, Boneless
    Quiche Assorted
    Quinoa
    Rabbit - Frozen
    Rambutan
    Red Cod Fillets - 225g
    Red Currant Jelly
    Relish
    Remy Red
    Rice - Aborio
    Rice - Basmati
    Rice - Jasmine Sented
    Rice - Long Grain
    Roe - Lump Fish, Black
    Rolled Oats
    Rum - Coconut, Malibu
    Rum - Cream, Amarula
    Rum - Dark, Bacardi, Black
    Rum - Light, Captain Morgan
    Rum - White, Gg White
    Sage - Fresh
    Salmon - Atlantic, Fresh, Whole
    Salmon - Atlantic, Skin On
    Salmon - Fillets
    Salmon - Smoked, Sliced
    Salmon - Whole, 4 - 6 Pounds
    Salsify, Organic
    Salt - Celery
    Salt - Sea
    Sambuca - Opal Nera
    Sambuca Cream
    Sandwich Wrap
    Sansho Powder
    Sauce - Balsamic Viniagrette
    Sauce - Chili
    Sauce - Cranberry
    Sauce - Gravy, Au Jus, Mix
    Sauce - Hoisin
    Sauce - Hp
    Sauce - Mint
    Sauce - Sesame Thai Dressing
    Sauce Bbq Smokey
    Sausage - Breakfast
    Sausage - Chorizo
    Scallop - St. Jaques
    Scallops - In Shell
    Scotch - Queen Anne
    Sea Bass - Fillets
    Sea Urchin
    Seabream Whole Farmed
    Seedlings - Buckwheat, Organic
    Seedlings - Mix, Organic
    Sherry - Dry
    Shichimi Togarashi Peppeers
    Shiro Miso
    Shortbread - Cookie Crumbs
    Shrimp - 16/20, Peeled Deviened
    Shrimp - Black Tiger 6 - 8
    Shrimp - Tiger 21/25
    Shrimp, Dried, Small / Lb
    Silicone Paper 16.5x24
    Skirt - 24 Foot
    Skirt - 29 Foot
    Smoked Tongue
    Sobe - Liz Blizz
    Sobe - Lizard Fuel
    Soho Lychee Liqueur
    Sole - Dover, Whole, Fresh
    Sole - Fillet
    Sorrel - Fresh
    Soup - Base Broth Chix
    Soup - Campbells - Chicken Noodle
    Soup - Campbells Asian Noodle
    Soup - Campbells Beef Strogonoff
    Soup - Campbells Chicken
    Soup - Campbells Mac N Cheese
    Soup - Campbells, Chix Gumbo
    Soup - Campbells, Lentil
    Soup - Campbells, Minestrone
    Soup - Campbellschix Stew
    Soup - Cream Of Potato / Leek
    Soup - French Onion, Dry
    Soup - Knorr, Chicken Gumbo
    Soup - Knorr, Chicken Noodle
    Soup - Knorr, Classic Can. Chili
    Soup - Tomato Mush. Florentine
    Soup Campbells - Italian Wedding
    Soup Campbells Turkey Veg.
    Southern Comfort
    Sparkling Wine - Rose, Freixenet
    Spice - Pepper Portions
    Spinach - Frozen
    Split Peas - Green, Dry
    Sponge Cake Mix - Chocolate
    Spring Roll Wrappers
    Sprite - 355 Ml
    Sprite, Diet - 355ml
    Sprouts - Onion
    Squash - Acorn
    Squash - Guords
    Squash - Pepper
    Squid - Breaded
    Squid U5 - Thailand
    Star Fruit
    Steampan - Foil
    Stock - Chicken, White
    Stock - Fish
    Stock - Veal, Brown
    Strawberries
    Strawberries - California
    Sugar - Brown, Individual
    Sugar - Crumb
    Sugar - Icing
    Sugar - Individual Portions
    Sugar - Monocystal / Rock
    Sugar - Sweet N Low, Individual
    Sugar - White Packet
    Sultanas
    Sunflower Seed Raw
    Swiss Chard - Red
    Syrup - Golden, Lyles
    Syrup - Kahlua Chocolate
    Syrup - Monin - Blue Curacao
    Syrup - Monin, Irish Cream
    Syrup - Pancake
    Tabasco Sauce, 2 Oz
    Table Cloth - 53x69 Colour
    Table Cloth 120 Round White
    Table Cloth 144x90 White
    Table Cloth 53x53 White
    Table Cloth 54x72 White
    Table Cloth 81x81 Colour
    Table Cloth 91x91 Colour
    Tamarillo
    Tart - Pecan Butter Squares
    Tart Shells - Barquettes, Savory
    Tart Shells - Savory, 2
    Tart Shells - Savory, 3
    Tea - English Breakfast
    Tea - Grapefruit Green Tea
    Tea - Herbal - 6 Asst
    Tea - Herbal Sweet Dreams
    Tea - Lemon Green Tea
    Tea - Mint
    Tequila - Sauza Silver
    Tequila Rose Cream Liquor
    Teriyaki Sauce
    The Pop Shoppe - Cream Soda
    The Pop Shoppe - Lime Rickey
    Tia Maria
    Tilapia - Fillets
    Tofu - Firm
    Tofu - Soft
    Tomatillo
    Tomato - Peeled Italian Canned
    Tomatoes
    Tomatoes - Cherry, Yellow
    Tomatoes - Diced, Canned
    Tomatoes - Grape
    Tomatoes - Heirloom
    Tomatoes - Hot House
    Tomatoes - Orange
    Tomatoes - Plum, Canned
    Towel - Roll White
    Towel Multifold
    Trout - Hot Smkd, Dbl Fillet
    Trout Rainbow Whole
    True - Vue Containers
    Trueblue - Blueberry 12x473ml
    Trueblue - Blueberry Cranberry
    Truffle - Whole Black Peeled
    Truffle Cups - Red
    Truffle Cups - White Paper
    Truffle Shells - White Chocolate
    Tumeric
    Tuna - Bluefin
    Tuna - Fresh
    Tuna - Sushi Grade
    Turkey - Breast, Boneless Sk On
    Turkey - Ground. Lean
    Turnip - Mini
    V8 Pet
    V8 Splash Strawberry Banana
    V8 Splash Strawberry Kiwi
    Vaccum Bag 10x13
    Vacuum Bags 12x16
    Vanilla Beans
    Veal - Bones
    Veal - Brisket, Provimi, Bone - In
    Veal - Chops, Split, Frenched
    Veal - Eye Of Round
    Veal - Ground
    Veal - Inside Round / Top, Lean
    Veal - Inside, Choice
    Veal - Insides Provini
    Veal - Knuckle
    Veal - Leg
    Veal - Nuckle
    Veal - Round, Eye Of
    Veal - Slab Bacon
    Veal - Tenderloin, Untrimmed
    Veal Inside - Provimi
    Venison - Ground
    Vermouth - Sweet, Cinzano
    Vinegar - Balsamic
    Vinegar - Champagne
    Vinegar - Red Wine
    Vinegar - Rice
    Vinegar - White
    Vinegar - White Wine
    Vodka - Smirnoff
    Wanton Wrap
    Wasabi Powder
    Water - Aquafina Vitamin
    Water - Green Tea Refresher
    Water - Mineral, Carbonated
    Water - San Pellegrino
    Water - Spring Water, 355 Ml
    Water - Tonic
    Watercress
    Wiberg Super Cure
    Wild Boar - Tenderloin
    Wine - Balbach Riverside
    Wine - Barbera Alba Doc 2001
    Wine - Black Tower Qr
    Wine - Blue Nun Qualitatswein
    Wine - Cahors Ac 2000, Clos
    Wine - Carmenere Casillero Del
    Wine - Casablanca Valley
    Wine - Cave Springs Dry Riesling
    Wine - Chablis 2003 Champs
    Wine - Chablis J Moreau Et Fils
    Wine - Chateau Bonnet
    Wine - Chateau Timberlay
    Wine - Cotes Du Rhone
    Wine - Cousino Macul Antiguas
    Wine - Delicato Merlot
    Wine - Domaine Boyar Royal
    Wine - Duboeuf Beaujolais
    Wine - Dubouef Macon - Villages
    Wine - Ej Gallo Sonoma
    Wine - Jaboulet Cotes Du Rhone
    Wine - Jafflin Bourgongone
    Wine - Lamancha Do Crianza
    Wine - Lou Black Shiraz
    Wine - Magnotta - Cab Franc
    Wine - Magnotta - Cab Sauv
    Wine - Magnotta - Pinot Gris Sr
    Wine - Maipo Valle Cabernet
    Wine - Mas Chicet Rose, Vintage
    Wine - Niagara Peninsula Vqa
    Wine - Periguita Fonseca
    Wine - Pinot Noir Latour
    Wine - Pinot Noir Pond Haddock
    Wine - Placido Pinot Grigo
    Wine - Prosecco Valdobiaddene
    Wine - Red, Cooking
    Wine - Red, Harrow Estates, Cab
    Wine - Red, Metus Rose
    Wine - Red, Pinot Noir, Chateau
    Wine - Red, Wolf Blass, Yellow
    Wine - Riesling Dr. Pauly
    Wine - Rosso Toscano Igt
    Wine - Saint Emilion Calvet
    Wine - Sake
    Wine - Sawmill Creek Autumn
    Wine - Shiraz South Eastern
    Wine - Shiraz Wolf Blass Premium
    Wine - Soave Folonari
    Wine - Stoneliegh Sauvignon
    Wine - Tio Pepe Sherry Fino
    Wine - Two Oceans Sauvignon
    Wine - Vineland Estate Semi - Dry
    Wine - Vouvray Cuvee Domaine
    Wine - White, Concha Y Toro
    Wine - White, Ej Gallo
    Wine - White, French Cross
    Wine - White, Lindemans Bin 95
    Wine - Zinfandel Rosenblum
    Wonton Wrappers
    Yeast Dry - Fermipan
    Yogurt - Banana, 175 Gr
    Yogurt - Peach, 175 Gr
    Yogurt - Plain
    Yoplait Drink
    Zucchini - Green
    """.components(separatedBy: .newlines)
    internal init(id: UUID = .init(), price: Decimal, labelText: String, imageURL: URL = ProductDesign.defaultURL) {
        self.id = id
        self.price = price
        self.labelText = labelText
        self.imageURL = imageURL
    }

    let id: UUID
    let price: Decimal
    let labelText: String
    let imageURL: URL

    static func random() -> ProductDesign {
        let price = Decimal(Double(Int.random(in: 100 ..< 10000)) / 100.0)
        return Self(price: price, labelText: Self.productNames.randomElement()!)
    }
}
