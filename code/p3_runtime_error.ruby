def raise_exception
  puts "Before raise statement"
  raise "An error was thrown by a raise statement"
  puts "After raise statement"
end

def inverse(x)
  raise ArgumentError, "Argument is not numeric" unless x.is_a? Numeric
  1.0 / x
end

puts "The inverse of 2 is: #{inverse(2)}"
puts inverse('hello')

#raise_exception
