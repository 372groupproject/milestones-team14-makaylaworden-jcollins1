# Jensen Collins, Makayla Worden
# jcollins1, makaylaworden
# CSC 372, Collberg
# p3_symbols.ruby
# This file shows how to use symbols within Ruby. A symbol is a special data type that acts 
# like a label or an identifier in a Ruby program. Symbols are immutable, which means that 
# they cannot be changed. Symbols are light-weight strings. A symbol is preceded by a 
# colon (:). They are used instead of strings because they can take up much less memory. 
# Symbols have better performance.

syms = {:first => "1st", :second => "2nd", :third => "3rd"}
syms.each do |key, value|
  print key, ": ", value, "\n"
end
