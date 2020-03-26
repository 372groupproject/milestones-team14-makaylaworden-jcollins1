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
