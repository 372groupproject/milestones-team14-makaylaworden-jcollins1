# Jensen Collins, Makayla Worden
# jcollins1, makaylaworden
# CSC 372, Collberg
# p3_hash.ruby
#

hsh = {"mom": 645, "dad": 32, "son": 99, "daughter": 0}
hsh.each do |key, value|
  print key, " has the value ", value, "\n"
end

hsh = {:james => "Georgia", :hannah => "Gainsville", :lauren => "South Beach"}
puts hsh[:lauren]

hsh = Hash.[](:james => "Georgia", :hannah => "Gainsville", :lauren => "South Beach")
puts hsh[:james]

hsh.delete(:hannah)
puts hsh

hsh.delete_if {|key, value| key.match("james")}
puts hsh

hsh[:fabio] = "Madrid"
puts hsh
puts "The length of the hash data structure is: #{hsh.length}"
puts "Here are the keys as an array: #{hsh.keys}"
