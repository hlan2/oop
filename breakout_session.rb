#Classes: purpose is that they serve blueprints to make multiples of something 
# red flags, verb, plural
# State and behavior
# Coffee, a type of drink
# Coffee is inheriting from drink
# Subypes, black coffee, espresso, cappicino
# Parent is drink
# States: hot/cold coffee, price. State is "temepreature"

class Drink
	#You want to be able to set and get states
	#Other times you also want to just get or just set
	#You can use attr_reader (get) attr_writter (set) attr_accessor (read & write)
	#You are calling a method that returns you what you want. You are not getting something directly
	
	attr_accessor :temperature, :size #attr_accessor is a method that replaces the code below

	def initialize
		puts "Im initializing"
	end
	#def temperature=(temp)
	#	@temperature = temp #sets an instance variable
	#end

	#def temperature
	#	@temperature
	#end

	def pour
		puts "I'm pouring a drink"
	end

end

class Coffee < Drink

	attr_accessor :roast

	def initialize(roast)
		puts "Im initilaizing coffee"
		@roast = roast
	end

	def grind
		puts "I'm grinding coffee"
	end

	def pour
		super
		puts "Im pouring coffee"
	end

end

espresso = Coffee.new("Araica") # when there is a .new it calls intialize
						#espresso.initialize doesn't work because initialize is called once
puts espresso.roast
