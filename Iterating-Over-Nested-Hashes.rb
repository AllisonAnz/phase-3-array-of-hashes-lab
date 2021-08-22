# Iterating Over Nested Hashes 

# At this point you should be familiar with iterating over hashes that have one level 
# a series of key/value pairs on a single tier 
jon_snow = {
  name: "Jon",
  email: "jon_snow@thewall.we"
} 

# What happens when we want to iterate over a multidimensional hash like the one below?
contacts = {
  "Jon Snow" => {
    name: "Jon",
    email: "jon_snow@thewall.we",
    favorite_ice_cream_flavors: ["chocolate", "vanilla", "mint chip"],
    knows: nil
  },
  "Freddy Mercury" => {
    name: "Freddy",
    email: "freddy@mercury.com",
    favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
  }
}

contacts.each do |person, data|
    puts "#{person}: #{data}"
end

# Returns 
# Jon Snow:
# { :name=>"Jon",
#   :email=>"jon_snow@thewall.we",
#   :favorite_ice_cream_flavors=>["chocolate", "vanilla", "mint chip"],
#   :knows=>nil
# }
# 
# Freddy Mercury:
# { :name=>"Freddy",
# :email=>"freddy@mercury.com",
# :favorite_ice_cream_flavors=>["strawberry", "cookie dough", "mint chip"]
# } 
puts ""

# Let's iterate over the second level of our contacts hash 
# In order to access the key/value pairs of the second tier (i.e the name, email, and other data about each contact)
# we need to iterate down into the level 

contacts.each do |person, data|
 #at this level, "person" is Jon Snow or Freddy Mercury and "data" is a hash of
  #key/value pairs to iterate over the "data" hash, we can use the following line:
  data.each do |attribute, value|
    puts "#{attribute}: #{value}"
  end
end
#Outputs
# name: Jon
# email: jon_snow@thewall.we
# favorite_ice_cream_flavors: ["chocolate", "vanilla", "mint chip"]
# knows: 
# name: Freddy
# email: freddy@mercury.com
# favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]

#Lets take it a step further and print out just the favorite ice cream flavors 
# Once again, we'll need to iterate down into that level of hash 
contacts.each do |person, data|
  #at this level, "person" is Jon Snow or Freddy and "data" is a hash of
  #key/value pairs to iterate over the "data" hash, we can use the following
  #line:

  data.each do |attribute, value|
    #at this level, "attribute" describes the key of :name, :email,
    #:favorite_ice_cream_flavors, or :knows we need to first check and see if
    #the key is :favorite_ice_cream_flavors, if it is, that means the VALUE is
    #an array that we can iterate over to print out each element

    if attribute == :favorite_ice_cream_flavors
      value.each do |flavor|
        # here, each index element in an ice cream flavor string
        puts "#{flavor}"
      end
    end
  end
end 

# Outputs 
# chocolate
# vanilla
# mint chip
# strawberry
# cookie dough
# mint chip 