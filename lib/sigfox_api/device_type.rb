# frozen_string_literal: true

module SigfoxApi
  module DeviceType
    def list_device_types
      request(method: :get, endpoint: '/v2/device-types')
    end

    def create_device_type(params)
      request(method: :post, endpoint: '/v2/device-types', params: params)
    end

    def device_type(id)
      request(method: :get, endpoint: "/v2/device-types/#{id}")
    end

    def list_callbacks(id)
      request(method: :get, endpoint: "/v2/device-types/#{id}/callbacks")
    end

    def create_callback(id, params)
      request(method: :post, endpoint: "/v2/device-types/#{id}/callbacks", params: params)
    end
  end
end
