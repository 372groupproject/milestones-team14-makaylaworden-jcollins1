# Jensen Collins, Makayla Worden
# jcollins1, makaylaworden
# CSC 372, Collberg
# p3_arrays.ruby
#
# also has first and last

array = ["hello", 3, 3.13, true]
array.each do |i|
  puts i
end

array2 = []
array2 << "This"
array2 << "is"
array2 << "another"
array2 << "array!"
print "#{array2} \n"

str = array2.pop
puts str

array3 = []
array3 << array2.pop until array2.empty?
print "#{array3}\n"

array4 = array + array
print "Two arrays added together: #{array4}\n"
array5 = []
array5 = array3 - ["another"]
print "Two arrays subtracted: #{array5}\n"
print "Found it!\n" if array.include?(3.13)
print "This is an array joined as a String: #{array.join(",")}"
