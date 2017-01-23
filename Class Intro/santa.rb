#Name: Justin Song
#Period: 6

class Santa
	attr_reader :age, :ethnicity, :gender, :reindeer_ranking
	attr_writer :age, :ethnicity, :gender, :reindeer_ranking
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}"
	end

	def initialize(gender, ethnicity)
		"Initializing new Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer_name)
		@reindeer_ranking.insert(8, @reindeer_ranking.delete(reindeer_name))
		return @reindeer_ranking
	end

end

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
a = Santa.new(example_genders[rand(6)], example_ethnicities[rand(6)])
a.age = rand(140)
puts "Age = #{a.age}"
puts "Ethnicity = #{a.ethnicity}"
puts "Gender = #{a.gender}"
