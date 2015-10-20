#rspec file test
#look in this directory

$:.unshift File.join(File.dirname(__FILE__))
require 'greeting' #<-- This tells the app what to test!

describe "My Hello World Method" do 
	it "says Hello World" do
		expect(greeting).to eq("Hello World")
	end
	
end