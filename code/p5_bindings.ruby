# Jensen Collins, Makayla Worden
# jcollins1, makaylaworden
# CSC 372, Collberg
# p5_bindings.ruby
# This file shows the lexical feature of bindings that are used in 
# Ruby. Bindinds are a way to wrap variables inside a class or a 
# method. It allows to be able to access local variables. 

exampleMethod = proc do
  local_variable = :local
  binding
end.call

puts exampleMethod.eval "local_variable" 
