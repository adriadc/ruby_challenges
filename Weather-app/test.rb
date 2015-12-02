require 'byebug'

class User
  def name=(name)
    @name = name
  end

  def get_addresses
    a = ["street A", "street B"]

    return a
  end
end

u = User.new
u.name = "Paulo"
addresses = u.get_addresses()
addresses.each do |address|
  puts address
end

# require 'byebug'
# add byebug string where you want to stop the execution
# you can interact with your variables
# next to go to the next line of code
# continue to execute the remain code
# exit to abort the program
#links
#Paulo Abreu1:47 PM
#https://projecteuler.net/
#Paulo Abreu1:51 PM
#https://www.udemy.com/introduction-to-data-structures-algorithms-in-java/
#Paulo Abreu1:51 PM
#https://www.coursera.org/course/algo

