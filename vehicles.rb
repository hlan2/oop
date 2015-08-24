class Vehicle
	attr_accessor :fuel_level, :make, :model, :year 

end

class Car < Vehicle
	attr_accessor :windows

	def initialize(fuel_level, make, model, year, windows)
		@fuel_level = fuel_level
		@make = make	
		@model = model
		@year = year
		@windows = windows
	end

end

class Motorcycle < Vehicle
	attr_accessor :nos

	def initialize(fuel_level, make, model, year, nos)
		
		@fuel_level = fuel_level
		@make = make
		@model = model
		@year = year
		@nos = nos
	end

end

car1 = Car.new("Full Tank", "Nissan", "Altima", "2003", "2")
car1.windows = "4"
motorcycle1 = Motorcycle.new("Half Tank", "Yamaha", "SX-3", "2007", "Yes")
motorcycle1.fuel_level = "Half Tank"

puts car1.inspect
puts motorcycle1.inspect
