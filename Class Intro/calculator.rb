#Write a class called Calculator that accepts arguements from the command line.
#This class has only one instance method called calculate. It takes a three item array
#of strings as an arguement and returns a string.
#Ex: 
#     calc = Calculator.new
#     calc.calculate(["1", "+", "2"])   => 3

#Calculator should be able work for all four operations: +, -, *, /

class Calculator
	def calculate(array)
		operation = array[1]
		p array
		case operation
		when "+"
			return (array[0].to_i + array[2].to_i).to_s
		when "*"
			return (array[0].to_i * array[2].to_i).to_s
		when "-"
			return (array[0].to_i - array[2].to_i).to_s
		when "/"
			return (array[0].to_i / array[2].to_i).to_s
		end
	end
end


#Driver code
  #Create an instance of calculator and pass it ARGV as its arguement and puts out
  #the result to the screen.

  calc = Calculator.new
  p calc.calculate(ARGV)