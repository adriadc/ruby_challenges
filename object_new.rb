#Start your class with the class keyword followed by your class name
#Your class name should be capitalized
class Kitty
#after you create the class you need to define (method) it by 
#giving it a waty to have a name
#the = sign is part of the setter
#Use methods, including getters and setters, 
#to define the characteristics members of your class will have
#Your variable should be instance variables
	def set_name=(cat_name)
		@name = cat_name
	end

#now define a way to ask for the name
#use the return to get the name
	def get_name
		return @name
	end

#next give the object an owner
	def set_owner=(owner_name)
		@owner_name = owner_name
	end

#now create the way to get the owner name		
	def get_owner
		return @owner_name
	end

#define a method that only exist for the new class
	def meow
	return "Mew, Mew, Mew!"
	end

#Make sure you end your class with the end keyword
end

#Now I want to name use my kitty name so I call the set name method
#used the capitalized object Kitty and apend the .new class, which is a standard class with ruby
#new creates a new class
my_kitty = Kitty.new
my_kitty.set_name= "Fluff"
cat_name = my_kitty.get_name

puts "#{cat_name} is my kitty! She says #{my_kitty.meow}!"
