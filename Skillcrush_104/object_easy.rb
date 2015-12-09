class Pets
	def set_name=(name)
		@name = name
	end
 
	def get_name
		return @name
	end
 
	def set_owner=(owner_name)
		@owner_name = owner_name
	end
 
	def get_owner
		return @owner_name
	end
end
class Tiger < Pets
	def speak
		return "Roar"
	end
end	
class Blackcat < Pets
	def meow
		return "meow!"
	end
end
#now define useage with variables
my_tiger = Tiger.new
my_tiger.set_name= "Tony"
tigername = my_tiger.get_name
my_blackcat = Blackcat.new
my_blackcat.set_name= "Tallula"
blackcatname = my_blackcat.get_name
#say something about them in a sentence
puts "My #{tiger_name} says #{my_tiger.speak}, 
and my #{blackcat_name} says also #{my_blackcat_cat.meow}."
#check to see if they are ok.
puts my_tiger.inspect
puts my_blackcat.inspect 



