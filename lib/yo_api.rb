require 'yo_api/version'
require 'yo_api/client'
require 'yo_api/request'

module Yo
  @host = 'http://api.justyo.co'
  class << self
    attr_reader :host
  end
end
