# Jensen Collins, Makayla Worden
# jcollins1, makaylaworden
# CSC 372, Collberg
# p3_hash.ruby
# This file shows how to created, edit, and traverse a hash data structure
# in Ruby. There are two different ways to declare a hash structure with
# either '=>' or ':' which is seen in the first two examples. Then you can
# create a hash structure with the Hash class. The file then shows how to 
# delete values in the hash structure in two different ways. 

# Two different ways to declare a hash structure
hsh = {"mom": 645, "dad": 32, "son": 99, "daughter": 0}
hsh.each do |key, value|
  print key, " has the value ", value, "\n"
end

hsh = {:james => "Georgia", :hannah => "Gainsville", :lauren => "South Beach"}
puts hsh[:lauren]

# Creating a hash structure with the Hash class
hsh = Hash.[](:james => "Georgia", :hannah => "Gainsville", :lauren => "South Beach")
puts hsh[:james]

# Shows how to directly delete and using an if
hsh.delete(:hannah)
puts hsh

hsh.delete_if {|key, value| key.match("james")}
puts hsh

#You can dynamically add to the hash structure as well
hsh[:fabio] = "Madrid"
puts hsh

# You can find the length of the hash structure
puts "The length of the hash data structure is: #{hsh.length}"

# You can make all the keys into an array if needed
puts "Here are the keys as an array: #{hsh.keys}"
