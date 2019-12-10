# frozen_string_literal: true

require 'faraday'
require 'faraday_middleware'
require 'json'

require_relative 'response'
require_relative 'device'
require_relative 'device_type'
require_relative 'group'
require_relative 'tile'

module SigfoxApi
  class Client
    API_ENDPOINT = 'https://api.sigfox.com'

    include SigfoxApi::Device
    include SigfoxApi::DeviceType
    include SigfoxApi::Group
    include SigfoxApi::Tile

    def initialize(options = {})
      @login = options[:login]
      @password = options[:password]
    end

    private

    def client
      @client ||= Faraday.new(API_ENDPOINT) do |client|
        client.request :json
        client.response :json, content_type: 'application/json', parser_options: { symbolize_names: true }
        client.adapter Faraday.default_adapter
        client.basic_auth(@login, @password)
      end
    end

    def request(method:, endpoint:, params: {})
      resp = client.public_send(method, endpoint, params)
      SigfoxApi::Response.new(resp)
    end
  end
end
