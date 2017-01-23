class PiggyBank
	attr_accessor :pennies, :nickels, :dimes, :quarters, :capacity
	def initialize(assets)
		@pennies = assets.fetch(:pennies, 0)
		@nickels = assets.fetch(:nickels, 0)
		@dimes = assets.fetch(:dimes, 0)
		@quarters = assets.fetch(:quarters, 0)
		@capacity = assets.fetch(:capacity, 0)
	end
	def add_pennies(number)
		if @pennies + @nickels + @quarters + @dimes + number < @capacity
			@pennies += number
		end
		return false
	end
	def add_nickels(number)
		if @pennies + @nickels + @quarters + @dimes + number < @capacity
			@nickels += number
		end
		return false
	end
	def add_dimes(number)
		if @pennies + @nickels + @quarters + @dimes + number < @capacity
			@dimes += number
		end
		return false
	end
	def add_quarters(number)
		if @pennies + @nickels + @quarters + @dimes + number < @capacity
			@quarters += number
		end
		return false
	end
	def take_pennies(number)
		if number <= @pennies
			return number
		end
		return nil
	end
	def take_nickels(number)
		if number <= @nickels
			return number * 5
		end
		return nil
	end
	def take_dimes(number)
		if number <= @dimes
			return number * 10
		end
		return nil
	end
	def take_quarters(number)
		if number <= @quarters
			return number * 25
		end
		return nil
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