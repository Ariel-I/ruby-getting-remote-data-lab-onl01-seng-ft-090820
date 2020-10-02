require 'open-uri'
require 'net/http'
require 'json'


class GetRequester
   URL ='https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json'

  
 def get_response_body
  uri = URI.parse(URL)
  response = Net::HTTP.get_response(uri)
  response.body 
 end 
 
 responses = GetRequester.new.get_response_body
 puts responses
 
 def parse_json 
   parser = JSON.parse(self.get_parse)
   parser.collect do |parse|
     parse
   end 
  get_response_body
 end
  
  
  
end 
