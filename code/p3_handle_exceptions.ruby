# Jensen Collins, Makayla Worden
# jcollins1, makaylaworden
# CSC 372, Collberg
# p3_handle_exceptions.ruby
# This file shows how to raise an exception so that the program will not terminate
# if it gets an error in Ruby. The keywords to handle exceptions are 'raise' and
# 'rescue'. Raise will allow you to thrown an exception an any time if there was
# an error, while rescue allows for the program to catch that expection and continue
# without allowing the program to crash.

def raise_and_rescue
  begin
    puts "Before raise statement"
    raise "An error was thrown by the raise statement"
    puts "After raise statement"
  rescue
    puts "Program was rescued"
  rescue ArgumentError => e
    e.message
  end
  puts "After the begin block is done"
end

raise_and_rescue
