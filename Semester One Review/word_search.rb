#Name: Justin Song
#Period: 6	
#level:
require "matrix"

puzzle = [
    ["a", "k", "f", "o", "x", "e", "s"], 
    ["s", "o", "a", "w", "a", "h", "p"], 
    ["i", "t", "c", "k", "e", "t", "n"],
    ["o", "t", "s", "d", "h", "o", "h"],
    ["s", "e", "x", "g", "s", "t", "a"],
    ["u", "r", "p", "i", "w", "e", "u"],
    ["z", "s", "b", "n", "u", "i", "r"]
  ]

puzzle_matrix = Matrix[ *puzzle ]

def display_puzzle(puzzle)
	puzzle.each do |line|
		puts line.to_a.join(" ")
	end
end

def horizontal_line_include?(word, puzzle)
	
end

def vertical_line_include?(word, puzzle_matrix)
	curr_column = 0
	while curr_column < puzzle_matrix.column_size
		word_index = puzzle_matrix.column(curr_column).to_a.join.index(word)
		if word_index != nil
			word_location = puzzle_matrix.column(curr_column)[word_index..word_index+word.length]
			word_location = word_location.join.upcase.split("") 
			display_puzzle(puzzle_matrix)
			return true
		end
		curr_column += 1
	end
	return false
end

p vertical_line_include?("otters", puzzle_matrix)

def diagonal_line_include?(word, puzzle)

end


def snake_line_include?(word, puzzle)

end