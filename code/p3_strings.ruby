# Jensen Collins, Makayla Worden
# jcollins1, makaylaworden
# CSC 372, Collberg
# p3_strings_ruby
#

puts "This is an example of a String"
puts "You can use escape characters: \" "
puts 'Here\'s another'

# Strings multiplication
string1 = "repeatable "
puts string1 * 5

# String comparsions
puts "a" < "b"
puts "d" < "B"

# String ASCII values
puts "A".ord
puts 65.chr

# String concatenation
str1 = "This is an "
str2 = "of a concatenated String."
puts "This is a " + "concatenated String."
puts str1 + str2
puts "#{str1 + str2}"
puts "#{str1}#{str2}"

# Scan through a String
# The number of '.' inside the parameter is how many strings will
# be gathered at one time
str1 = "Each Letter"
str1.scan(/../) {|letter| puts letter}

# Can check is a String matches a regular expression
puts "Found a number inside!" if "123456789" =~ /[0-9]/
puts "Found the number 2" if "Is there a 2?".match("2")

# Substituting with Strings
str1 = "Hello there mate"
str2 = str1.sub("mate", "friend")
puts str1
puts str2

puts "hello".capitalize
puts "UPPERCASE".downcase
puts "lowercase".upcase
puts "Missing last letter".chop
puts "reverse".reverse
# Prints the sum of all the letters ASCII values
puts "Word".sum
puts "sWiTcHcAsEs".swapcase
puts "One".next
str1 = "goodbye"
10.times {str1 = str1.next}
puts str1
