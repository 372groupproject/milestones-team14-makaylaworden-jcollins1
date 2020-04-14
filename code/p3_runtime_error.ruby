# Jensen Collins, Makayla Worden
# jcollins1, makaylaworden
# CSC 372, Collberg
# p3_runtime_errors.ruby
# This file shows some examples of runtime errors that could occur when coding in
# Ruby. The first example is when the program uses the 'raise' keyword to throw
# an exception. You will have to comment out line 22 if you would like to see the
# error get thrown for the ArgumentError

def raise_exception
  puts "Before raise statement"
  raise "An error was thrown by a raise statement"
  puts "After raise statement"
end

def inverse(x)
  raise ArgumentError, "Argument is not numeric" unless x.is_a? Numeric
  1.0 / x
end

# This causes the raise the throw an exception
raise_exception

# This causes for an ArgumentError to appear in the method inverse
puts "The inverse of 2 is: #{inverse(2)}"
puts inverse('hello')
