require 'rubygems'
require 'twilio-ruby'

account_sid = "ACc62e27382672ac2bd3b5379b15a6ecdf"
auth_token = "23318809ddb1b9021adb951a6b52d172"

@client = Twilio::REST::Client.new(acount_sid, auth_token)



#accept a question
puts "what is your question?:"
question = gets


#select a random answer from a list, ol
possible_answer = [
"It is certain","It is decidedly so","Without a doubt","Yes, definitely","You may rely on it",
"As I see it, yes","Most likely","Outlook good","Yes","Signs point to yes","Reply hazy try again",
"Ask again later","Better not tell you now","Cannot predict now","Concentrate and ask again",
"Don't count on it","My reply is no","My sources say no","Outlook not so good","Very doubtful"]

random_number = rand(possible_answers.length)
	puts answer.rand()

#text the answer
message = @client.account.messages.create(
	:from => "+3475274110",
	:to => "+9178047734",
	:body => "#{question} #{possible_answers[random_number]}", 
	)

puts message.to
#I'm sure that I'm going to see new code that I have never seen before.