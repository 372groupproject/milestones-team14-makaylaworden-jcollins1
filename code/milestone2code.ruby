# Jensen Collins, Makayla Worden
# jcollins1, makaylaworden
# CSC 372, Collberg
# milestone2code.ruby
# This file does selection sort on an unsorted array of ints.
# It uses two different types of for loops, uses an if, and
# modifies an array

list = [11,2,15,7,10,0,20,27]
length = list.size - 1
min = 0

puts "Unsorted Array: #{list}"

(0..length).each do |i|
  min = i
  (i + 1).upto(length) do |j|
    min = j if (list[j] < list[min])
  end
  temp = list[min]
  list[min] = list[i]
  list[i] = temp
end

puts "Ordered Array: #{list}"
