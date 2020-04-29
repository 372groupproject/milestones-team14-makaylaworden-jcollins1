# Jensen Collins, Makayla Worden
# jcollins1, makaylaworden
# CSC 372, Collberg
# p5_closures.ruby
# This file shows a lexical feauture in Ruby called closures. Closures
# are used to finish a method and is normally a return statement. Here
# are two examples using a Proc and a lambda. A Proc is just a block of
# code in Ruby and is short for Procedure. 

# Closure using a Proc
def foo
  f = Proc.new { return "return from foo from inside proc" }
  f.call # control leaves foo here
  return "return from foo"
end

# Closure using a lambda
def bar
  f = lambda { return "return from lambda" }
  f.call # control does not leave bar here
  return "return from bar"
end

puts foo
puts bar 
