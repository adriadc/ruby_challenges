

#def set_name=(name)
#    @name = name
#end
 
#def get_name
#    return @name
e#nd
 
#def set_owner=(owner_name)
#    @owner_name = owner_name
#end
 
#def get_owner
 #   return @owner_name
#end
#attr_writer :name, :owner_name

#attr_reader :name, :owner_name

attr_accessor :name, :owner_name

my_chinchilla = Chinchilla.new
my_chinchilla.name = "Dali"
chinchillaname = my_chinchilla.name