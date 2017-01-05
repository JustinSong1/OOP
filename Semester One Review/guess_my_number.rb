#Name: Justin Song
#Period: 6

#Put the logic to your game in the play_game method.
def play_game
	my_number = 1 + rand(100)
	number_guessed = false
	until number_guessed
		puts "Pick a number between 1 and 100"
		answer = gets.chomp.to_i
		if answer == my_number
			puts "You're right! The number is #{my_number}"
			number_guessed = true
		elsif answer > my_number
			puts "Your guess is too high."
		else
			puts "Your guess is too low."
		end
	end
end

#Run your method here to play the game.
play_game