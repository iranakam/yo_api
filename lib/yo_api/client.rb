module Yo
  class Client
    def initialize(api_token: '')
      @params = { api_token: api_token }
    end

    def yo(params = {})
      res = Yo::Request.new('/yo/', @params.merge(params)).post
      JSON.parse(res)
    end

    def yoall(params = {})
      res = Yo::Request.new('/yoall/', @params.merge(params)).post
      JSON.parse(res)
    end

    def accounts(params = {})
      res = Yo::Request.new('/accounts/', @params.merge(params)).post
      JSON.parse(res)
    end

    def check_username(params = {})
      res = Yo::Request.new('/check_username/', @params.merge(params)).get
      JSON.parse(res)
    end

    def subscribers_count
      res = Yo::Request.new('/subscribers_count/', @params).get
      JSON.parse(res)
    end
  end
end
