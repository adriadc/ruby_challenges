#Start your class with the class keyword followed by your class name

class Kitty
#after you create the class you need to define (method) 

#refactor your getters and setters
attr_accessor :name, :owner_name

	
#define a method that only exist for the new class
	def meow
	return "Mew, Mew, Mew!"
	end

end


#used the capitalized object Kitty and apend the .new class, which is a standard class with ruby

my_kitty = Kitty.new
my_kitty.name= "Fluff"
kittyname = my_kitty.name

puts "#{kittyname} is my kitty! She says #{my_kitty.meow}!"
