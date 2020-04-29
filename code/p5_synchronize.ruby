# Jensen Collins, Makayla Worden
# jcollins1, makaylaworden
# CSC 372, Collberg
# p5_synchronize.ruby
#

require 'thread'

mutex = Mutex.new
cv = ConditionVariable.new

a = Thread.new {
  mutex.synchronize {
    puts "Method A: I have critical section, wait for cv"
    cv.wait(mutex)
    puts "Method A: I have critical section again"
  }
}

puts "(Inbetween the two threads)"

b = Thread.new {
  mutex.synchronize {
    puts "Method B: I am critical, but losing it"
    cv.signal
    puts "Method B: I am critical agian, finish program"
  }
}

a.join
b.join
