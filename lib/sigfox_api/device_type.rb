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

    def update_device_type(id, params)
      request(method: :put, endpoint: "/v2/device-types/#{id}", params: params)
    end

    def delete_device_type(id)
      request(method: :delete, endpoint: "/v2/device-types/#{id}")
    end

    def list_callbacks(id)
      request(method: :get, endpoint: "/v2/device-types/#{id}/callbacks")
    end

    def list_callback_errors(id)
      request(method: :get, endpoint: "/v2/device-types/#{id}/callbacks-not-delivered")
    end

    def create_callback(id, params)
      request(method: :post, endpoint: "/v2/device-types/#{id}/callbacks", params: params)
    end

    def update_callback(id, callback_id, params)
      request(method: :put, endpoint: "/v2/device-types/#{id}/callbacks/#{callback_id}", params: params)
    end

    def delete_callback(id, callback_id)
      request(method: :delete, endpoint: "/v2/device-types/#{id}/callbacks/#{callback_id}")
    end
  end
end
