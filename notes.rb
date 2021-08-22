# Working With an Array of Hashes 
# Recognize vocabulary term: "array of hashes" ("AoH")
# Recognize that "arrays of hashes" are contact lists or spreadsheets
# Create an Array of Hashes
# Read scalar data from an Array of Hashes
# Modify scalar data in an Array of Hashes

# Most of the syntax for AoA works the same for AoH 

# Key Image: Contact List or Spreadsheet 
# Take a card, add some standard fields to it (first name, last name, phone, etc)
# and fill in the fields 
# take another card, do the same etc 
# These cards could go in an Array, an Array of Hashes 

# If you think about a contact list, its also easy to export it to a spreadsheet like 
# Google Sheet or an Excel Sheet. 
# You could take the fields on the card and make them the columns across the top of the spreadsheet 

# From Hash to Array of Hashes 
# Recall that a Hash is like a table, but in code form. 
# It is a way for your program to store pairs of data s elements in a collection 

# We call names in a Hash that we use to point to data, keys 
# By providing a Hash name and a key, we can uniquely identify a value 

# Multiple Hashes inside of an Array would mean you could find the zeroth, first, second etc. 
# element of that Array and get back a little dictionary
# You could then ask that dictionary for the :family_name fields content and get back "Smith" or "Huang"

# Recognize Vocabulary Term "Array of Hashes"
# AoH: Array of Hashes 
# fields: the key/value pair of the a Hash "the :family_name field"

#Create an AoH 
# Simple Hashes 
director_1 = {
  name: "Ida Lupino",
  favorite_movie: "The Hitch-Hiker"
}

director_2 = {
  name: "Orson Welles",
  favorite_movie: "Citizen Kane"
}

director_3 = {
  name: "Andrej Tarkovsky",
  favorite_movie: "Solaris"
}

film_fest = [
  director_1,
  director_2,
  director_3,
] 
# => [{:name=>"Ida Lupino", :favorite_movie=>"The Hitch-Hiker"}, {:name=>"Orson Welles", :favorite_movie=>"Citizen Kane"}, {:name=>"Andrej Tarkovsky", :favorite_movie=>"Solaris"}] 

# If we don't need to use director_1, director_2, director_3, then we don't need to assign
# them before nesting them in film_fest 
# We can write a nested AoH using literal formatting 

# AoH in one go
film_fest = [{:name=>"Ida Lupino", :favorite_movie=>"The Hitch-Hiker"}, {:name=>"Orson Welles", :favorite_movie=>"Citizen Kane"}, {:name=>"Andrej Tarkovsky", :favorite_movie=>"Solaris"}]

# Same as above, but using whitespace to make it easier for humans to read

film_fest = [
  {:name=>"Ida Lupino", :favorite_movie=>"The Hitch-Hiker"},
  {:name=>"Orson Welles", :favorite_movie=>"Citizen Kane"},
  {:name=>"Andrej Tarkovsky", :favorite_movie=>"Solaris"}
]
#--------------------------------------------------------------------------------------------

# Read Scalar Data From a Nested Hash 
# One of the defining feature of AoHs is that we use coordinates to target unique 
# elements as if they were in a grid where one part of the coordinate is a number and the other is a hash key 
# To read an element from a nested Array, provide the coordinates 
directors = [
  {:name=>"Ida Lupino", :favorite_movie=>"The Hitch-Hiker"},
  {:name=>"Orson Welles", :favorite_movie=>"Citizen Kane"},
  {:name=>"Andrej Tarkovsky", :favorite_movie=>"Solaris"}
]

directors[0] #=> {:name=>"Ida Lupino", :favorite_movie=>"The Hitch-Hiker"}
directors[0][:name] #=> "Ida Lupino" 

# The first set of brackets refers to the "row" of "spreadsheet" of the AoH 
# The second refers to the key used to get the value out of the Hash 

#-------------------------------------------------------------------------------------------
# Modify Scalar Data In an Array of Hashes 
#The same technique of using coordinates applies both to reading and modificiation 
# If you target an element you can read it or update it 
directors = [
  {:name=>"Ida Lupino", :favorite_movie=>"The Hitch-Hiker"},
  {:name=>"Orson Welles", :favorite_movie=>"Citizen Kane"},
  {:name=>"Andrej Tarkovsky", :favorite_movie=>"Solaris"}
]

directors[0] #=> {:name=>"Ida Lupino", :favorite_movie=>"The Hitch-Hiker"}
directors[0][:name] #=> "Ida Lupino"
directors[0][:name] = "John Ford" #=> "John Ford" 
directors[0][:favorite_movie] = "The Grapes of Wrath" #=> "The Grapes of Wrath" 
directors[0] #=> {:name=>"John Ford", :favorite_movie=>"The Grapes of Wrath" }
directors #=> => [{:name=>"John Ford", :favorite_movie=>"The Grapes of Wrath"}, {:name=>"Orson Welles", :favorite_movie=>"Citizen Kane"}, {:name=>"Andrej Tarkovsky", :favorite_movie=>"Solaris"}] 

# You can also replace inner Hashes with new Hashes 
directors = [
  {:name=>"Ida Lupino", :favorite_movie=>"The Hitch-Hiker"},
  {:name=>"Orson Welles", :favorite_movie=>"Citizen Kane"},
  {:name=>"Andrej Tarkovsky", :favorite_movie=>"Solaris"}
]

directors[1] = { name: "Cecil B. DeMille", favorite_movie: "Samson and Delilah" }
directors #=> => [{:name=>"Ida Lupino", :favorite_movie=>"The Hitch-Hiker"}, {:name=>"Cecil B. DeMille", :favorite_movie=>"Samson and Delilah"}, {:name=>"Andrej Tarkovsky", :favorite_movie=>"Solaris"}] 