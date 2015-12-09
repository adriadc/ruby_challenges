#this lesson was on how to write an object class
#capitalize objects because they are constants
class Ferret
#after you create the class you need to define it by giving it a name
#the = sign is part of the setter
def set_name=(ferret_name)	
	@name = ferret_name
end
#now define a way to ask for the name
#use the return to get the name
def get_name
	return @name
end
#next give the object an owner
def set_oener=(owner_name)
	@owner_name = owner_name
end
#now create the way to get the owner name
def get_owner
	return @owner_name
end
#define a method that only exist for the ferret class
def squeal
	return "Squeee"
end
#end the object class creation with 'end'
end
#Now I want to name my ferret so I call the set name method
#used the capitalized object Ferret and apend the .new class, which is a standard class with ruby
#new creates a new class
my_ferret = Ferret.new
#Set his name to Fredo
my_ferret.set_name= "Fredo"
#use the getter instead of gets to get the name
ferret_name = my_ferret.get_name
#write a sentence about the ferret and ouput what the ferret says
puts "#{ferret_name} says #{my_ferret.squeal}"
