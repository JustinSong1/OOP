#Name: Justin Song
#Period: 6

#Write your game logic here. If you can, write helper methods
#to make your code cleaner and more readable. First, just get
#the game to work, then try to clean up your code.
def play_game
	puts "Player one choose a word"
	word = gets.chomp
	word_array = word.split("")
	puts "Player two guess the word"
	puts "*\n" * 25
	lives_left = 6
	letters_guessed = []
	word_guessed_string = "_" * word.length
	puts word_guessed_string.split("").join(" ")
	print_hangman(lives_left)
	while lives_left > 0 
	  puts "Guess a letter"
	  letter = gets.chomp
	   if letters_guessed.include?(letter)
	      puts "You already guessed #{letter}"
	   elsif
	      word_array.include?(letter)
	      puts "The word contains #{letter}"
	      all_indexes_of_letter = word_array.each_index.select{|i| word_array[i] == letter} 
	      all_indexes_of_letter.each do |index|
	        word_guessed_string[index] = letter
	      end
	      puts word_guessed_string.split("").join(" ")
	      print_hangman(lives_left)
	      letters_guessed << letter
	   else 
	     puts "The word does not contain #{letter}"
	     lives_left -= 1
	     print_hangman(lives_left)
	     letters_guessed << letter
	   end
	   if !word_guessed_string.split("").include?("_")
	     puts "Player 2 guessed the word!"
	     puts "The word was #{word}"
	     return
	   end
	end
	puts "Sorry you didn't guess the word, Player 1 Wins!"
	puts "The word was #{word}"
	return 
end

def print_hangman(lives_left)
  case lives_left
  when 6
    puts  " _________     \n" +
          "|           \n" +
          "|           \n" +
          "|      \n" +
          "|       \n" +
          "|              \n" +
          "|              \n"
  when 5
    puts  " _________     \n" +
          "|         |    \n" +
          "|         0    \n" +
          "|         \n" +
          "|       \n" +
          "|              \n" +
          "|              \n"
  when 4
    puts " _________     \n" +
         "|         |    \n" +
         "|         0    \n" +
         "|         |\n" +
         "|        \n" +
         "|              \n" +
         "|              \n"
  when 3
    puts " _________     \n" +
         "|         |    \n" +
         "|         0    \n" +
         "|        /| \n" +
         "|       \n" +
         "|              \n" +
         "|              \n"
  when 2
    puts " _________     \n" +
"|         |    \n" +
"|         0    \n" +
"|        /|\\  \n" +
"|       \n" +
"|              \n" +
"|              \n"
  when 1
    puts " _________     \n" +
"|         |    \n" +
"|         0    \n" +
"|        /|\\  \n" +
"|        / \n" +
"|              \n" +
"|              \n"
  when 0
    puts " _________     \n" +
"|         |    \n" +
"|         0    \n" +
"|        /|\\  \n" +
"|        / \\  \n" +
"|              \n" +
"|              \n"
  end
end
#Run this method to play the game.
play_game