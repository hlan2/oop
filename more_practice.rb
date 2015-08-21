=begin
This is a practice file that is similar to the "people" assignment. Instead it 
has to do with a car, and car parts "brake" and "speedometer" I've attempted to make this 
code with minimal referencing or copying of the "people" assignment 
=end

class Car
	def initialize(part_name)
		@part_name = part_name
	end

	def alert
		puts "There is something wrong with the #{@part_name}!"
	end
end

class Brake < Car
	def brake 
		puts "I stop a car from moving"
	end
end

class Speedometer < Car
	def speedometer
		puts "I let you know what your speed is"
	end
end

brake = Brake.new("brake")
speedometer = Speedometer.new("speedometer")

brake.alert
speedometer.alert

brake.brake
speedometer.speedometer