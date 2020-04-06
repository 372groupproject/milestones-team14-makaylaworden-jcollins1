# Jensen Collins, Makayla Worden
# jcollins1, makaylaworden
# CSC 372, Collberg
# p2_if.ruby
# This file shows how to use an if statement in Ruby. There are some 
# variations but are doing the same thing. There was a way to use an if
# with a ':', i.e. if x == 2 : x = 12 end, but this is not supported by
# newer versions of Ruby

x = 6
if x <= 10
  x = 9
end
print "x: "
puts x

if x == 9 then x = 2 end
print "x: "
puts x

x = 8 if x == 2
print "x: "
puts x

if (x == 3)
  puts "x is equal to 3"
elsif (x == 5)
  puts "x is equal to 5"
else
  puts "x is not equal to 3 or 5"
end
