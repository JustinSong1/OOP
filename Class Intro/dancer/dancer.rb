#Name: Justin Song
#Period: 6
class Dancer
	attr_accessor :name, :age, :studio
	def initialize(name, age)
		@name = name
		@age = age
		@studio = "Paly Dance"
	end
	def to_s
		"Name: #{@name}\nAge: #{@age}"
	end 
	def dab(number_of_times)
		"dab" + ("*dab" * (number_of_times-1))
	end
	def twist_and_shout(word)
		"*twirl* #{word} *twirl*"
	end
end