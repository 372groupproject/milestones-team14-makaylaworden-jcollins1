# Unless-expressions are the opposite of the if-expressions
# The block will execute if the test expression if false
# Unless-expressions are the same as negating an if,
# if !expression. Unless-expressions does not allow
# for following elsif, there is no elsunless

x = 9
unless x == 3
  x = 20
end
print "x: "
puts x

x = 10 unless x == 6
print "x: "
puts x
