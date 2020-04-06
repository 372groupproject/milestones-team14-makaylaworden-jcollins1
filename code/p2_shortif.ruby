# Jensen Collins
# jcollins1, makaylaworden
# CSC 372, Collberg
# p2_shortif.ruby
# This file shows how to make use a short-if expression in Ruby. There are 3
# different variations but all do the same thing. It can only make the decision
# true or false for one expression per short-if. 

puts (true ? 't' : 'f')
puts (false ? 't' : 'f')

x = 9
high_or_low = '^'
puts "The number #{x} is: #{high_or_low == '^' ? "high" : "low"}."

answer = if x == 6 then true else false end
puts answer

answer = (true if x == 8) || (false if x == 9)
puts answer
