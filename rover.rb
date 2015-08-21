class Rover
	def initialize(x,y, direction)
		@x = x
		@y = y
		@dir = direction
	end
	
	def read_instruction(instruction)
		if instruction == "L"
			turn_left
		elsif instruction == "R"
			turn_right
		elsif instruction == "M"
			move
		end
	end	

	
	def turn_left
		if @dir == "N"
			@dir = "W"
		elsif @dir == "W"
			@dir = "S"
		elsif @dir == "S"
			@dir = "E"
		elsif @dir == "E"
			@dir = "N"
		end
	end

	def turn_right
		if @dir == "N"
			@dir = "E"
		elsif @dir == "E"
			@dir = "S"
		elsif @dir == "S"
			@dir = "W"
		elsif @dir == "W"
			@dir = "N"
		end
	end

	def move
		if @dir == "N"
			@x += 1
		elsif @dir == "W"
			@y -=1
		elsif @dir == "S"
			@x -= 1
		elsif @dir == "E"
			@y += 1
		end

	end

end

puts "Enter plateau size:"
plateau = gets.chomp.split.map {|x| x.to_i} #.map goes through each element in array and returns it after an action, in this case, to an integer
puts plateau.inspect # prints out array of 2 string

puts "Enter initial coordinates and direction:"
initial_coords = gets.chomp.split

x = initial_coords[0].to_i
y = initial_coords[1].to_i
direction = initial_coords[2]

rover1 = Rover.new(x, y, direction)

puts "Enter a string of commands:"
commands = gets.chomp.split("")
puts commands.inspect

commands.each do |command|
	rover1.read_instruction(command)
	puts rover1.inspect
end