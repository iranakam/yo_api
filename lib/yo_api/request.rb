require 'net/http'
require 'json'

module Yo
  class Request
    def initialize(path = '', params = {})
      @uri = parse_uri(path)
      @params = params
    end

    def get
      @uri.query = URI.encode_www_form(@params)
      @req = Net::HTTP::Get.new(@uri)
      send
    end

    def post
      @req = Net::HTTP::Post.new(@uri.path)
      @req.set_form_data(@params)
      send
    end

    private

    def parse_uri(path)
      URI.parse("#{Yo.host}#{path}")
    end

    def send
      http = Net::HTTP.start(@uri.host, @uri.port)
      http.request(@req).body
    end
  end
end
