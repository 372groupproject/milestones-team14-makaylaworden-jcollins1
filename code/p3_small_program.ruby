# Jensen Collins, Makayla Worden
# jcollins1, makaylaworden
# CSC 372, Collberg
# p3_small_program.ruby
#

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
