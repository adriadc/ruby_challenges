#test silly messages
require 'rubygems'
require 'twilio-ruby'

account_sid = "your account sid"
auth_token = "your auth token"

@client = Twilio::REST::Client.new(account_sid, auth_token)

message = @client.account.messages.create(
  :from => "+347-527-4110", 
  :to =>"+917-804-7734", 
  :body => "Haaaii!"
)
 
puts message.to