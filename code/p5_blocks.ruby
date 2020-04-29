# Jensen Collins, Makayla Worden
# jcollins1, makaylaworden
# CSC 372, Collberg
# p5_blocks.ruby
# This file shows how to use a lexcial feature in Ruby called blocks.
# Blocks are a chunk of code that can be passed and executed by any
# method in the file. Data is normally fed to these methods by arugments
# and mainly used in methods. 


# This example shows the use of BEGIN and END keywords 
BEGIN { 
   # BEGIN block code 
   puts "BEGIN code block"
} 

END { 
   # END block code 
   puts "END code block"
}
   # MAIN block code 
puts "MAIN code block"

def test
   puts "You are in the method"
   yield
   puts "You are again back to the method"
   yield
end
test {puts "You are in the block"}
