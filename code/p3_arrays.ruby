# Jensen Collins, Makayla Worden
# jcollins1, makaylaworden
# CSC 372, Collberg
# p3_arrays.ruby
# This files shows different ways an array can be created, edited, and traversed in 
# Ruby. There are two different ways to assign values to an array. If you know the
# values then you can pre-load the values into the array or you can do it dynamically
# through the program. Arrays are not set as a fixed length. Arrays in Ruby also have
# a first and last method which returns the first or last element. 

# Pre-assigning the array and then traversing with a for each loop
array = ["hello", 3, 3.13, true]
array.each do |i|
  puts i
end

# Dynamically builds the array 
array2 = []
array2 << "This"
array2 << "is"
array2 << "another"
array2 << "array!"
print "#{array2} \n"

# Shows the arrays pop method that returns the last element and removes it
str = array2.pop
puts str

# Another way to dynamically build an array with an until loop and the empty
# method
array3 = []
array3 << array2.pop until array2.empty?
print "#{array3}\n"

# Concatenates two arrays together
array4 = array + array
print "Two arrays added together: #{array4}\n"
  
# Subtracts two arrays, similar to how set subtraction works
array5 = []
array5 = array3 - ["another"]
print "Two arrays subtracted: #{array5}\n"
 
# Shows the include method with an if
print "Found it!\n" if array.include?(3.13)
  
# Shows the join method that can be used without or with a parameter. 
# Join with no parameter, joins on white space
print "This is an array joined as a String: #{array.join(",")}"
