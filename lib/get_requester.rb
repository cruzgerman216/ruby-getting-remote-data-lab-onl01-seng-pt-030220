require 'open-uri'

class GetRequester
  attr_accessor :url
  def initialize(url)
    @url = url
    get_response_body
  end

  def get_response_body
    uri = URI.parse(@url)
    uri.open.string
  end

  def parse_json
    JSON.parse(get_response_body)
  end
end
