#now make a Parent class and give it children
class Cats
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

class Tiger < Cats
	def mew
		return "mew"
	end
end	

class Black < Cats
	def meow
		return "meow"
	end
end

class Orange < Cats
	def scratch
		return "chud, chud, chud"
	end
end

class Tortie < Cats
	def roll
		return "wap, wap, wap, crash"
	end
end

#for the tiger cat
my_tiger_cat = Tiger.new
my_tiger_cat.set_name= "Fluff"
tiger_name = my_tiger_cat.get_name

#for the black cat
my_black_cat = Black.new
my_black_cat.set_name= "Barbie"
black_name = my_black_cat.get_name

#for the orange cat
my_orange_cat = Orange.new
my_orange_cat.set_name= "Pixel"
orange_name = my_orange_cat.get_name

#for the tortie cat
my_tortie_cat = Tortie.new
my_tortie_cat.set_name= "Princess"
tortie_name = my_tortie_cat.get_name

#now for the puts 
puts "My cat #{tiger_name} says #{my_tiger_cat.mew}, 
and my cat #{black_name} also says #{my_black_cat.meow}, 
and my cat #{orange_name} sounds like this #{my_orange_cat.scratch},
and my cat #{tortie_name} goes #{my_tortie_cat.roll}!"
 
puts my_tiger_cat.inspect
puts my_black_cat.inspect
puts my_orange_cat.inspect
puts my_tortie_cat.inspect

