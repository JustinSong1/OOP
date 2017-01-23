#Name: Justin Song
#Period: 6

class Puppy
  
  def initialize
  	puts "Initializing new puppy instance"
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
  	puts "Woof " * int
  end

  def roll_over
  	puts "*rolls over"
  end

  def dog_years(human_age)
  	puts human_age * 7
  end

  def lick(name)
  	puts "*licks #{name}"
  end

end

Fido = Puppy.new
Fido.fetch("Squeaky Toy")
Fido.speak(2)
Fido.dog_years(1)
Fido.lick("Bob")

class Person

	def initialize
		puts "Initializing new human instance"
	end

	def go_to_school(time)
		puts "I'm leaving for school at #{time}"
	end

	def do_hw
		puts "*doing HW"
	end

end

times = 0
people = []
while times < 50 
	people << Person.new
	times += 1
end

people.each do |person|
	person.do_hw
	person.go_to_school("7:30")
end