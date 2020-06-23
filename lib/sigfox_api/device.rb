# frozen_string_literal: true

module SigfoxApi
  module Device
    def list_devices(options = {})
      request(method: :get, endpoint: '/v2/devices', params: options)
    end

    def create_device(params)
      request(method: :post, endpoint: '/v2/devices', params: params)
    end

    def disengage_seq_number(device_id)
      request(method: :post, endpoint: "/v2/devices/#{device_id}/disengage")
    end

    def suspend_multiple_devices(device_ids = [])
      params = { data: device_ids }
      request(method: :post, endpoint: '/v2/devices/bulk/suspend', params: params)
    end
  end
end
