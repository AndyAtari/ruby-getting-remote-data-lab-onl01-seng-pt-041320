require 'net/http'
require 'open-uri'
require 'json'
#require 'awesome_print'

class GetRequester

    def initialize(url)
        @url = url
    end

    def get_response_body
        uri = URI.parse(@url)
        Net::HTTP.get_response(uri).body
    end

    def parse_json
        JSON.parse(get_response_body)
    end

end

#get_requester = GetRequester.new("https://learn-co-curriculum.github.io/json-site-example/endpoints/locations.json")
#ap get_requester.parse_json