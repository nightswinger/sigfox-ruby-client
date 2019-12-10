# frozen_string_literal: true

module SigfoxApi
  module Group
    def list_groups(options = {})
      request(method: :get, endpoint: '/v2/groups', params: options)
    end

    def create_group(params)
      request(method: :post, endpoint: '/v2/groups', params: params)
    end

    def delete_group(group_id)
      request(method: :delete, endpoint: "/v2/groups/#{group_id}")
    end
  end
end
