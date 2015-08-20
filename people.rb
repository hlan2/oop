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


#student = Person.new("Chris")
#instructor = person.new("Christina")

student = Student.new("Chris")
instructor = Instructor.new("Christina")

student.greet 
instructor.greet

instructor.teach
student.learn

#student.teach #inheritance is one way
instructor.learn #innheritance is one way