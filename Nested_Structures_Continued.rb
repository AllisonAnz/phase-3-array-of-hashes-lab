# Nested Structures Continued
# Identify that nested structures can be mixed

# You've spent the last few lessons learning about a couple of basic nested structures:
# 
# Array of Arrays, or "AoA"
# Array of Hashes, or "AoH"
# In addition to these, we also have other basic structures:
# 
# Hash of Hashes, or "HoH"
# Hash of Arrays, or "HoA"

# We can nest nested data structures in other nested data structures 
# Your Array of Hashes (AoH) can have keys that point to Arrays of Arrays (AoA). 
#Or your nested node structure of Hashes of Hashes (HoH) can have a key that points 
#to an Array of Hashes (AoH). By using this mix-and-match principle, our NDS' can 
#become very complex!

# Describe a Physical Vending Machine 
# You enter a grid coodinate on a vending machine. 
# At each intersection (coordinate) in the vending machine, there was a "spinner"
# It's a device that looks like a corkscrew 
# It holds multiple snack packages in it 
# When you've pade, the spinner spins and pushes the front-most snack off the corkscrew "spinner"
# The snack then falls to a retrieval box 
# Each snack's package has a price and a name 

# Identiry that Nested Structures Can be Mixed 
# in order to model a real grid based vending machine (C20 is candy bar) B50 is a drink of a spinner of drinks
# We thing the right NDS is 
#Array of Array ...of Array ...of Hashes .....with keys `:name` and `:price` where .......:name points to a `String` .......:price points to an `Integer` price 

# Explain the Entire Vending Machine from the Top Down 
# We have a coordinate grid. That's an AoA In each coordinate, 
# there's a "spinner" with multiple snacks Each snack has two important facts 
# associated with it, a :name String  and a :price Integer 

# Explain the Entire Vending Machine from The Bottom Up view of the NDS 
# A price of the snack represented as an `Integer` Each snack has a name stored as 
# a `String` Each snack collects those facts in a `Hash` that has keys `:name` and 
# `:price`.  Multiple snacks are stored in an indexed collection, an `Array`, that 
# represents the "spinner" device. Each "spinner" is accessible by a coordinate
#  within an AoA "grid." The vending machine is the super-container AoA. 

# Show the Data Structure as Ruby Code 

vending_machine = [[[{:name=>"Vanilla Cookies", :price=>3},
   {:name=>"Pistachio Cookies", :price=>3},
   {:name=>"Chocolate Cookies", :price=>3},
   {:name=>"Chocolate Chip Cookies", :price=>3}],
  [{:name=>"Tooth-Melters", :price=>12},
   {:name=>"Tooth-Destroyers", :price=>12},
   {:name=>"Enamel Eaters", :price=>12},
   {:name=>"Dentist's Nightmare", :price=>20}],
  [{:name=>"Gummy Sour Apple", :price=>3},
   {:name=>"Gummy Apple", :price=>5},
   {:name=>"Gummy Moldy Apple", :price=>1}]],
 [[{:name=>"Grape Drink", :price=>1},
   {:name=>"Orange Drink", :price=>1},
   {:name=>"Pineapple Drink", :price=>1}],
  [{:name=>"Mints", :price=>13},
   {:name=>"Curiously Toxic Mints", :price=>1000},
   {:name=>"US Mints", :price=>99}]]] 
   #=> [[[{:name=>"Vanilla Cookies", :price=>3}, {:name=>"Pistachio Cookies", :price=>3}, {:name=>"Chocolate Cookies", :price=>3}, {:name=>"Chocolate Chip Cookies", :price=>3}], [{:name=>"Tooth-Melters", :price=>12}, {:name=>"Tooth-Destroyers", :price=>12}, {:name=>"Enamel Eaters", :price=>12}, {:name=>"Dentist's Nightmare", :price=>20}], [{:name=>"Gummy Sour Apple", :price=>3}, {:name=>"Gummy Apple", :price=>5}, {:name=>"Gummy Moldy Apple", :price=>1}]], [[{:name=>"Grape Drink", :price=>1}, {:name=>"Orange Drink", :price=>1}, {:name=>"Pineapple Drink", :price=>1}], [{:name=>"Mints", :price=>13}, {:name=>"Curiously Toxic Mints", :price=>1000}, {:name=>"US Mints", :price=>99}]]]

# Get a "spinner"
vending_machine[0][0] #=> [{:name=>"Vanilla Cookies", :price=>3}, {:name=>"Pistachio Cookies", :price=>3}, {:name=>"Chocolate Cookies", :price=>3}, {:name=>"Chocolate Chip Cookies", :price=>3}]

# Get a spinner's first snack
vending_machine[1][1][0] #=> {:name=>"Mints", :price=>13}

# Get a spinner's first snack's price value
vending_machine[1][1][0][:price] #=> 13

# Work with a single snack
test_snack = vending_machine[0][1][0]
test_snack[:price] #=> 12
test_snack[:name] #=> "Tooth-Melters"

# Print out some fun data
puts "I'm definitely thinking about buying #{test_snack[:name]} and sharing my $#{test_snack[:price]} investment"
#=> I'm definitely thinking about buying Tooth-Melters and sharing my $12 investment 

# Next Step: Working with the Nested Data Structure 
# Insight 
# Insight is when we pair data structures and Ruby programming to provide answers that enlighten us as humans 
