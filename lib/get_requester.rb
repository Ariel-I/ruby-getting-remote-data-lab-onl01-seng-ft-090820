require 'open-uri'
require 'net/http'
require 'json'


class GetRequester
  
  def initialize(url="https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json")
   @url = url 
  end 

  
  def get_response_body
    uri = URI.parse(@url)
    response = Net::HTTP.get_response(uri)
     response.body 
  end 
 
  def parse_json 
   parser = JSON.parse(self.get_response_body)
   parser.collect do |parse|
     parse |"name"|
   end 
  end
 
 
end 

   responses = GetRequester.new.get_response_body
   puts responses
  
  #  responses = GetRequester.new
  # puts responses.get_response_body.uniq
