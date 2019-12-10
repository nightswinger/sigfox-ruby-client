# frozen_string_literal: true

module SigfoxApi
  module Tile
    def monarch
      request(method: :get, endpoint: '/v2/tiles/monarch')
    end

    def monarch_kmz(params)
      request(method: :post, endpoint: '/v2/tiles/monarch/kmz', params: params)
    end

    def monarch_kmz_results(job_id)
      request(method: :get, endpoint: "/v2/tiles/monarch/kmz/#{job_id}")
    end

    def public_operator_kmz(group_id)
      request(method: :post, endpoint: "/v2/tiles/public-operator/#{group_id}/kmz")
    end
  end
end
