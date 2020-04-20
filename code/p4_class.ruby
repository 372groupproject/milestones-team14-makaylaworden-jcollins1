# Jensen Collins, Makayla Worden
# jcollins1, makaylaworden
# CSC372, Collberg
# p4_class.ruby
# This file shows how to use classes in Ruby. They are created
# with the keyword '.new'. Once a class was created you are able
# to call methods within the class. Classes don't need to have a 
# constructor like in Java. 

class Animal
  def animalSpeak
    puts "Animal is talking"
  end
end

animal = Animal.new
animal.animalSpeak
