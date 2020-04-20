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

class Hangman(puzzle)
  @totalMisses = puzzle.length
  @userMisses = 0
  # Fields:
  # => possible booleans to keep track of Which
  # => body parts have been elimainated

  # All of these just need to be the ASCII of a alive
  # body part and then the dead one
  def head
    # eigth miss
    puts "       _^^^_ "
    puts "      (o   o)"
    puts "     (   ^   ) "
    puts "     | ----- | "
  end

  def body
    # thrid miss
    puts "       \\   / "
    puts "       |   |  "
    puts "       | o |  "
    puts "       |   |  "
  end

  def leftArm
    # fourth miss
    puts "    /  \\   / "
    puts "   / / |   | "
    puts "  / /  | o | "
    puts " (0)   |   | "
  end

  def rightArm
    # fifth miss
    puts "    /  \\   /  \\ "
    puts "   / / |   | \\ \\ "
    puts "  / /  | o |  \\ \\ "
    puts " (0)   |   |   (0) "
  end

  def leftLeg
    # first miss
    puts "      / |"
    puts "     /  |"
    puts "   _/ * | "
    puts "  |_____|"
  end

  def rightLeg
    # second miss
    puts "      / | | \\ "
    puts "     /  | |  \\ "
    puts "   _/ * | | * \\_ "
    puts "  |_____| |_____|"
  end

  def printHangman
    puts "       _^^^_ "
    puts "      (o   o)"
    puts "     (   ^   ) "
    puts "     | ----- | "
    puts "    /  \\   /  \\ "
    puts "   / / |   | \\ \\ "
    puts "  / /  | o |  \\ \\ "
    puts " (0)   |   |   (0) "
    puts "      / | | \\ "
    puts "     /  | |  \\ "
    puts "   _/ * | | * \\_ "
    puts "  |_____| |_____|"
  end
end

class Puzzle
  #Fields:
  # => arrays of letters
  # => different puzzles
  def getPuzzleOne
    # Theme: Places (i dont care if these change)
  end

  def getPuzzleTwo
    # Theme: Resturants (i dont care if these change)
  end

  def getPuzzleThree
    # Theme: Cities (i dont care if these change)
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
hangman = Hangman.new("Puzzle Example")
hangman.head()
hangman.rightArm()
hangman.rightLeg()
