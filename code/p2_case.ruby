# Jensen Collins, Makayla Worden
# jcollins1, makaylaworden
# CSC 372, Collberg
# p2_case.ruby
# This file shows how to use case statments in Ruby. There are two keywords
# 'case' and 'when' and optionally 'else' for a catch all statement for
# everything the whens might miss. You have the ability to use the '=' operator
# for a when, i.e. when x = 29 then <expression>, but this will end up changing
# the value to whatever you set it too.

x = 29
case
when x < 29 then puts "#{x} is less than 29"
when x == 29 then puts "#{x} is equal to 29"
when x > 29 then puts "#{x} is greater than 29"
end

x = 17
case x
when 0..28 then puts "#{x} is less than 29"
when 29 then puts "#{x} is equal to 29"
when 30..50 then puts "#{x} is greater than 29"
else puts "not a correct value: #{x}."
end
