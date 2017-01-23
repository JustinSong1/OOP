class PiggyBank
	attr_accessor :pennies, :nickels, :dimes, :quarters, :capacity
	def initialize(assets)
		@pennies = assets.fetch(:pennies, 0)
		@nickels = assets.fetch(:nickels, 0)
		@dimes = assets.fetch(:dimes, 0)
		@quarters = assets.fetch(:quarters, 0)
		@capacity = assets.fetch(:capacity, 0)
	end
	def add_coins(number, coin)
		if @pennies + @nickels + @quarters + @dimes + number < @capacity
			case coin.downcase
			when "pennies"
				@pennies += number
			when "nickels"
				@nickels += number
			when "dimes"
				@dimes += number
			when "quarters"
				@quarters += number
			end
		end
		return false
	end
	def take_coins(number, coin)
		case coin.downcase
		when "pennies"
			if number <= @pennies
				return @pennies
			end
		when "nickels"
			if number <= @nickels
				return @nickels * 5
			end
		when "dimes"
			if number <= @dimes
				return @dimes * 5
			end
		when "quarters"
			if number <= @quarters
				return @quarters * 25
			end
		end
		return false
	end
	def coins
		return @pennies + @nickels + @quarters + @dimes
	end
	def amount_cents
		return @pennies + 5*@nickels + 25*@quarters + 10*@dimes
	end
	def amount_dollars
		return (@pennies + 5*@nickels + 25*@quarters + 10*@dimes) / 100.0
	end
end