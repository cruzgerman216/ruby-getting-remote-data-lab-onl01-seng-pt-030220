require 'open-uri'

class GetRequester
  attr_accessor :url
  def initialize(url)
    @url = url
    get_response_body
  end

  def get_response_body
    uri = URI.parse(@url)
    uri.open
  end

  def parse_json

  end
end
