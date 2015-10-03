#class is not capitalized
class Ferret
 #set_name is separated from the = sign no line brake after set name
	def set_name=(ferret_name)
		@name = ferret_name
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
 
	def squeal
		return "squeeeeee"
	end
 
end
 #Chinchilla is spelled wrong
class Chinchilla
 #it occured to me that repeatind this section over for the chinchilla may be redundant
	def set_name=(chinchilla_name)
		@name = chinchilla_name
	end
#we set the name but we did not get the name
	def get_name
		return @name
	end
 
	def set_owner=(owner_name)
		@owner_name = owner_name
	end
 
	def get_owner
		return @owner_name
	end
 
	def squeek
		return "eeeep"
	end
 
end
 
class Parrot
 #name after @name should be parrot_name
	def set_name=(parrot_name)
		@name = parrot_name
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
#no tweet method		
	def tweet
	return "tweet"	
	end
 
end
#all of the names variables should match, ferretname should be ferret_name
my_ferret = Ferret.new
my_ferret.set_name= "Fredo"
ferret_name = my_ferret.get_name
#all of the names variables should match, parrotname should be parrot_name 
my_parrot = Parrot.new
my_parrot.set_name= "Budgie"
parrot_name = my_parrot.get_name
#chinchilla is spelled wrong again
#all of the names variables should match, chinchillaname should be chinchilla_name 
my_chinchilla = Chinchilla.new
my_chinchilla.set_name= "Dali"
chinchilla_name = my_chinchilla.get_name
#chinchilla spelled wrong again 
puts "#{ferret_name} says #{my_ferret.squeal}, 
#{parrot_name} says #{my_parrot.tweet}, 
and #{chinchilla_name} says #{my_chinchilla.squeek}."
 
puts my_ferret.inspect
puts my_parrot.inspect
puts my_chinchilla.inspect