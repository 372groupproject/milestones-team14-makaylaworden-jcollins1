# Jensen Collins, Makayla Worden
# jcollins1, makaylaworden
# CSC372, Collberg
# p4_methods.ruby
# This file shows how to use methods in Ruby. There are two different
# methods. The first simply is called to print a picture of a turle
# ascii animal to the screen. Then the second takes it two different
# types of parameters. The first call to printArray takes in an
# array pointer, while the second call uses an array. It also shows
# the return statement 

def method1(char)
  puts("        " + "_" * (2 * 3 - 3) + "  _")
  puts("       /" + (char + " ") * (3 - 2) + char + "\\/')")
  puts("      /" + (char + " ") * (3 - 1) + char + "\\/")
  puts("       ou" + " " * (2 * 3 - 5) + "ou")
  return "This is the string that was returned"
end

def printArray(*array)
  array.each do |i|
    puts i
  end
end


puts "Here is a turle\n"
stringReturned = method1("u")
print "\n"
puts stringReturned

array = [2,3,4,5,6]

printArray(array)
printArray(["Here", "is", "another", "list"])
