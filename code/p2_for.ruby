# Jensen Collins, Makayla Worder
# jcollins1, makaylaworden
# CSC 372, Collberg
# p2_for.ruby
# This file shows you how to use a for loop in Ruby. There are 2
# variations, a normal for loop and then a for each loop. 

for i in 0..10
  puts "This is the value of i: #{i}"
end

(0..10).each do |i|
  puts "This is the value of i: #{i}"
end

["apple", "pear", "carrot"].each do |i|
  puts "Each value: #{i}"
end
