require 'open-uri'
require 'net/http'
require 'json'
require 'pry'

class GetRequester
  
  def initialize(URL)
   URL ='https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json'
  end 
  
 def get_response_body
  uri = URI.parse(URL)
  response = Net::HTTP.get_response(uri)
  response.body 
 end 
 
 responses = GetRequester.new.get_response_body
 puts responses
 
 def parse_json 
 end
  
  
  
end 
