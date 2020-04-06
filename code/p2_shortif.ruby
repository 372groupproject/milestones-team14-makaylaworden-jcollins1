# The format is: result = (condition) ? (expression-if-true) : (expression-if-false)
# Or: result = if condition then expression-1 else expression-2 end
# Or; result = (value-1 if expression-1) || (value-2 if expression-2)

puts (true ? 't' : 'f')
puts (false ? 't' : 'f')

x = 9
high_or_low = '^'
puts "The number #{x} is: #{high_or_low == '^' ? "high" : "low"}."

answer = if x == 6 then true else false end
puts answer

answer = (true if x == 8) || (false if x == 9)
puts answer
