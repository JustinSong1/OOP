#Name: Justin Song
#Period: 6

#Pseudocode for your class goes here:
#Characteristics
#Name
# Species
# Size

# Behavior
# Fly
# Eat 
# Sleep

#Class definition goes here:
class Bird

	attr_accessor :name, :species, :size

	def initialize(name, species, size)
		@name = name
		@species = species
		@size = size
	end

	def fly
		puts "#{@name} flew away"
	end

	def eat(food)
		puts "#{@name} ate the #{food}"
	end

	def sleep
		puts "zzzzzzzzzzzzz..."
	end
end



#Driver code (your user interface) goes here:
birds = []
puts "Would you like to create a bird?"
answer = gets.chomp
until 1==0
	if answer == "yes"
		attributes = []
		puts "What would the like the bird's name to be?"
		attributes[0] = gets.chomp
		puts "What would you like the bird's species to be?"
		attributes[1] = gets.chomp
		puts "How big would you like the bird to be in inches?"
		attributes[2] = gets.chomp
		puts "Nice you just created a bird"
		birds << Bird.new(attributes[0], attributes[1], attributes[2])
	elsif answer == "no"
		if birds.length == 0
			puts "You didn't create any birds"
			return
		else
			puts "Here are the #{birds.length} bird(s) you created."
			birds.each do |bird|
				puts "Name - #{bird.name}"
				puts "Species - #{bird.species}"
				puts "Size - #{bird.size} inches"
				puts "\n"
			end
		end
	else
		puts "Please type yes or no."
	end	
	puts "Would you like to create another bird?"
	answer = gets.chomp.downcase
end