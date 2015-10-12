#test silly messages
require 'rubygems'
require 'twilio-ruby'

account_sid = "ACc62e27382672ac2bd3b5379b15a6ecdf"
auth_token = "23318809ddb1b9021adb951a6b52d172"

@client = Twilio::REST::Client.new(account_sid, auth_token)

message = @client.account.messages.create(
  :from => "1347-527-4110", 
  :to =>"1917-804-7734", 
  :body => "Haaaii!"
)
 
puts message.to