#Create People from people controller.rb for comparison!
get '/' do
    @people = Person.all
    erb :"/people/index"
  end
 
  get '/new' do
    erb :"/people/new"
  end  
 
  get '/:id' do
    @person = Person.find(params[:id])
    erb :"/people/show"
  end
