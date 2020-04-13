# Jensen Collins, Makayla Worden
# jcollins1, makaylaworden
# CSC 372, Collberg
# p3_boolean.ruby
#

# Also can do <, >, <=, >=, ==

if true
  puts "This will print true"
else
  puts "This will print false"
end

if nil
  puts "nil is true"
else
  puts "nil is false"
end

if 0
  puts "0 is equal to true"
else
  puts "0 is equal to false"
end

bool = true || false
puts "True OR False: #{bool}"

bool = true && false
puts "True AND False: #{bool}"

bool = !true
puts "Not true: #{bool}"
