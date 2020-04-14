# Jensen Collins, Makayla Worden
# jcollins1, makaylaworden
# CSC 372, Collberg
# p3_numbers.ruby
# This file shows how to use Integers and floating point numbers in Ruby.
# Integers don't have decimal values and floating point numbers do. You
# are able to create loops with Integers and be able to switch the
# types easily from String -> Integer -> Floating point in any order. 
# Depending on their size, there are two types of Integers, one is Bignum
# and the second is Fixnum

# float
floatNum = 0.1
# int
intNum = 4

# Shows the difference between float and Integer division
time = 6.78 / 3600
velocity = floatNum / time
puts "The velocity was #{velocity}"

time = 525 / 89
puts "This shows integer division: #{time}"

# Able to do mod
modulus = 25 % 6
puts "This shows mod: #{modulus}"

# Show the different ways to create loops using Integers
puts "This will count to 25"
25.times {|number| print "#{number} "}
print "\n"

puts "Counting up from an Integer: "
1.upto(10) {|value| print "#{value} "}
print "\n"

puts "Counting down from an Integer: "
20.downto(10) {|y| print "#{y} "}
print "\n"

puts "You can also skip numbers: "
10.step(100, 10) {|x| print "#{x} "}
print "\n"

# Ruby can also convert an Integer or floating point numnber to a
# String. Ruby also allows to switch between Integer and floating
# point numbers
int_to_string = 653.to_s
puts "The value 653 is now type: #{int_to_string.class}"
float_to_string = 45.21.to_s
puts "The value 45.21 is now type: #{float_to_string.class}"
float_to_int = 4.21.to_i
puts "The value 4.21 is now type: #{float_to_int.class}"
int_to_float = 69.to_f
puts "The value 69 is now type: #{int_to_float.class}"

# You can also put in '_' to show the user that the number should contain
# ',' but they will not show when you print
commaInt = 1_234_567
puts "Integer with underscores as commas: #{commaInt}"
