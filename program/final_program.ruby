# Jensen Collins, Makayla Worden
# jcollins1, makaylaworden
# CSC372, Collberg
# final_program.ruby
#

def startingMethod
  puts "~~~~~~~~~~~~~ Welcome to Hangman! ~~~~~~~~~~~~~"
  puts "          There are 3 different levels         "
  puts "        1. Easy "
  puts "        2. Medium "
  puts "        3. Hard "
  print "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n\n"
  print "Which level do you want to play? "
  level = gets.chomp.to_i
  while (level < 0 || level > 3) do
    print "Please enter a valid level to play: "
    level = gets.chomp.to_i
  end
  return level
end

class Hangman
  # Fields:
  # => total misses
  # => number of misses until game is over
  # => possible booleans to keep track of Which
  # => body parts have been elimainated

  # All of these just need to be the ASCII of a alive
  # body part and then the dead one
  def head
  end

  def body
  end

  def leftArm
  end

  def rightArm
  end

  def leftLeg
  end

  def rightLeg
  end

  def printHangman
  end

end

class Puzzle
  #Fields:
  # => arrays of letters
  # => different puzzles
  def getPuzzleOne
  end

  def getPuzzleTwo
  end

  def getPuzzleThree
  end

  def currentPuzzle
  end

  def lettersLeft
  end

  def lettersGuessed
  end
end

# while loop of the game to continue and keep track of where the
# user is at
level = 0
level = startingMethod()

