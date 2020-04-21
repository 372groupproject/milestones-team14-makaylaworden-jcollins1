# Jensen Collins, Makayla Worden
# jcollins1, makaylaworden
# CSC372, Collberg
# final_program.ruby
# This program will play the game of Hangman. First the user is prompted to
# pick a level of difficulty, with choices of 1-3. Following this,
# the user will be prompted to make guesses and will be shown their progress
# towards guessing the correct phrase. If they guess wrong, parts of the
# hangman will be drawn until either the player wins or the hangman is complete.

# This method gets the user's choice of difficulty level that
# they want to play Hangman at.
# If a number is chosen outside of the range of 1-3, they will
# be prompted again to pick a new number.
def startingMethod
  puts "~~~~~~~~~~~~~ Welcome to Hangman! ~~~~~~~~~~~~~"
  puts "          There are 3 different levels         "
  puts "        1. Easy "
  puts "        2. Medium "
  puts "        3. Hard "
  puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n\n"
  puts "Which level do you want to play? "
  level = gets.chomp.to_i
  while (level < 0 || level > 3) do
    print "Please enter a valid level to play: "
    level = gets.chomp.to_i
  end
  return level
end

# This will initialize the game play. Using the level chosen by
# the user, startGame initializes the Hangman to be drawn
# and a puzzle for the user to solve.
def startGame(level, puzzo, man)
  if level == 1
    puts "Theme: Animals"
    puzzo.getPuzzleOne
  elsif level == 2
    puts "Theme: Ice Cream Flavors"
    puzzo.getPuzzleTwo
  else
    puts "Theme: Cities"
    puzzo.getPuzzleThree
  end

  # This will run the game until the player loses
  # TODO: Get it to check for winner/loser
  while man.totalMissesLeft != 0
    guessBoard(puzzo)
    # TODO: Print Hangman if guess was a miss
    nextGuess(puzzo, man)
  end

end

# This displays the correct guesses the user has made
# on the console such that correct guesses will be in
# the position they would be in the phrase, and guesses that
# haven't been made yet will be represented as underscores.
def guessBoard (puzzo)
  currentPuzzo = puzzo.currentPuzzle()

  print "\nHere's a hint: "
  currentPuzzo.chars.each do |i|
    if puzzo.getLettersGuessed.include? i
      #TODO: Figure out why this doesn't check correctly
      # literally nothing else can happen until this part
      # is fixed

      # If they guessed it before, print it in its position
      print i
    else # otherwise print a blank
      print "_ "
    end
  end
end

# This prompts the user for their next guess, updates
# Puzzle with that guess and subtracts from
# Hangman's number of guesses left if it is incorrect
def nextGuess(puzzo, man)
  puts "\nNext guess? "
  guess = gets # Get guess
  guessedRight = puzzo.updateGuesses(guess) # Update puzzo

  if !guessedRight # If incorrect guess,
    man.updateMissesLeft(-1)
  end
end

class Hangman
# Fields:
# => possible booleans to keep track of Which
# => body parts have been elimainated
  def initialize
    @totalMissesLeft = 8 # How many Hangman body parts there are left to draw
    # This number will be subtracted according to the number of incorrect guesses
    # the user makes
  end

# Setter
  def updateMissesLeft (val)
    @totalMissesLeft -= val
  end
# Getter
  def totalMissesLeft
    return @totalMissesLeft
  end

# All of these just need to be the ASCII of a alive
# body part and then the dead one
  def head
    # eigth miss
    puts "      _^^^_ "
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
    puts "      _^^^_ "
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
  def initialize
    @currentPuzzle = ""
    @lettersLeft = Array.new
    @lettersGuessed = Array.new
  end

  # This will return a array size 3 of chars that
  # will be used to play on level one.
  def getPuzzleOne
    # Theme: Animals
    puzzOne = ["dog", "cat", "bug", "cow", "pig", "yak", "owl"]
    @currentPuzzle = puzzOne[rand(puzzOne.size)] # Picks a random one
    return @currentPuzzle
  end

  # This will return a slightly harder puzzle than getPuzzleOne
  # that has no guaranteed length. Made for level 2.
  def getPuzzleTwo
    # Theme: Ice Cream Flavors
    puzzTwo = ["chocolate", "vanilla", "strawberry", "cookie dough"]
    @currentPuzzle = puzzTwo[rand(puzzTwo.size)] # Picks a rando
    return @currentPuzzle
  end

  # This is the hardest levels puzzle so it will return a long array
  # of a random length. Made for level 3.
  def getPuzzleThree
    # Theme: Cities
    puzzThree = ["san diego", "tucson", "phoenix", "seattle",
                 "los angeles", "new york", "dallas", "nashville",
                 "miami", "portland"]
    @currentPuzzle = puzzThree[rand(puzzThree.size)] # Returns random city
    return @currentPuzzle
  end

  # This updates the guesses the user has made and returns whether
  # or not the puzzle contained this guess
  def updateGuesses (guess)
    @lettersGuessed.append(guess)
    return (currentPuzzle.include? guess)
    # TODO: Update letters left
  end

  # Getters
  def currentPuzzle
    return @currentPuzzle
  end

  def lettersLeft
    #TODO: Me!
  end

  def getLettersGuessed
    return @lettersGuessed
  end
end

# while loop of the game to continue and keep track of where the
# user is at
level = startingMethod()
puzzo = Puzzle.new
man = Hangman.new
startGame(level, puzzo, man)
