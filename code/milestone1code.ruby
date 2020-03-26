# Jensen Collins, Makayla Worden
# jcollins1, makaylaworden
# CSC 372, Collberg
# milestone1code.ruby
# This file does some interesting things with the syntax and some data structures in Ruby.
# First there is the the surround method that wraps Strings inside a certain type of
# bracket using both pointers and chars. Then there is the printer method which prints
# out each element of the list using both numbers and pointers.

# Add the strings before and after around each parm and print
def surround(before, after, *items)
    items.each { |x| print before, x, after, "\n" }
end

surround('[', ']', 'hi', 'goodbye', 'the sound')
print "\n"

surround('<', '>', 'Unicorns', 'Bozers', 'Snails', 'Salamanders', 'Slugs',
        'People')
print "\n"

def printer(a, b, c, d)
    print "a = #{a} b = #{b}, c = #{c}, d = #{d}\n"
end

# Use * to adapt between arrays and arguments
list1 = ['snack', 'fast', 'junk', 'pizza']
list2 = [4, 9]
printer(*list1)
printer(17, 3, *list2)
