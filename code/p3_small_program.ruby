# Jensen Collins, Makayla Worden
# jcollins1, makaylaworden
# CSC 372, Collberg
# p3_small_program.ruby
# This is a small program for milestone 3 that shows off the uniqueness of Ruby
# when it comes to data types. This program takes in a message from the user and
# a key and scabbles the message up. It moves each letter in the message up by
# the amount of the key. It also wraps the message back around if it goes past
# 'a' or 'z'

def encode(phrase, key)
  code = ""
  num = 0
  phrase.scan(/./) {|letter| begin
    if letter >= 'a' && letter <= 'z' then
      num = letter.ord + key
      num = num - 26 if num.chr > 'z'
      num = num + 26 if num.chr < 'a'
      code = code + num.chr
    else
      code = code + letter
    end
  end
  }
  return code
end

message = ""
key = 0
encoded = ""
puts "Enter in your secret message: "
message = gets.chomp
puts "Enter in your numerical key value: "
key = gets.chomp.to_i
encoded = encode(message.downcase, key)
print "This is your new encoded message: #{encoded}"
