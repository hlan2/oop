class Person
	def initialize(name)
		@name = name
	end

	def greet
		puts "Hi my name is #{@name}"
	end
end
	
	class Student < Person
	
		def learn 
		puts "I get it!"
		end
	end

	class Instructor < Person

		def teach
		puts "Everything in Ruby is an Object."
		end

	end

student = Student.new("Chris")
instructor = Instructor.new("Christina")

student.greet #will output student greeting
instructor.greet #will output teacher greeting

instructor.teach 
student.learn	

#student.teach --->inheritance is one way which is why you get an error message
#instructor.learn --->innheritance is one way which is why you get an error message