# These are all the different ways you can use an if statement in Ruby
# The version if x == 2: x = 12 end and includes an ':' is no longer
# supported by newer versions of Ruby.

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
